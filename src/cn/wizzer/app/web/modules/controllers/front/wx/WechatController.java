package cn.wizzer.app.web.modules.controllers.front.wx;

import cn.wizzer.app.web.commons.base.Globals;
import cn.wizzer.app.wx.modules.models.*;
import cn.wizzer.app.wx.modules.services.*;
import cn.wizzer.framework.base.Result;
import cn.wizzer.framework.page.datatable.DataTableColumn;
import cn.wizzer.framework.page.datatable.DataTableOrder;
import cn.wizzer.framework.util.StringUtil;
import com.vdurmont.emoji.EmojiParser;
import org.apache.commons.lang.StringUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.shiro.web.session.HttpServletSession;
import org.nutz.dao.Chain;
import org.nutz.dao.Cnd;
import org.nutz.http.Http;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.json.Json;
import org.nutz.lang.Strings;
import org.nutz.lang.util.NutMap;
import org.nutz.log.Log;
import org.nutz.log.Logs;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Filters;
import org.nutz.mvc.annotation.Ok;
import org.nutz.mvc.annotation.Param;
import org.nutz.weixin.spi.WxApi2;
import org.nutz.weixin.spi.WxResp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.math.BigDecimal;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

/**
 * Created by wizzer on 2016/8/6.
 */
@IocBean
@At("/public/wx/wechat")
public class WechatController {
    private static final Log log = Logs.get();
    @Inject
    private WxConfigService wxConfigService;
    @Inject
    private WxUserService wxUserService;
    @Inject
    private WxBargainService wxBargainService;
    @Inject
    private WxBargainDetailService wxBargainDetailService;
    @Inject
    private WxBargainConfigService wxBargainConfigService;


    @At("/?/oauth")
    @Ok("re")
    @Filters
    public String oauth(String wxid, @Param("goto_url") String goto_url, HttpServletRequest req, HttpSession session) throws Exception {
        session.setAttribute("wechat_goto_url", goto_url);
        if (!Strings.isBlank(wxid)) {
            Wx_config config = wxConfigService.fetch(wxid);
            String back_url = "http://" + Globals.AppDomain + "/public/wx/wechat/" + wxid + "/back";
            // String back_url = "http://www.mtonggao.com/view/web/modelList.html";
            // String back_url = "www.baidu.com";
            String redirect_uri = URLEncoder.encode(back_url, "utf-8");
            log.debug("redirect_uri::" + redirect_uri);
            String state = "wechat";
//            String scope = "snsapi_base";
            String scope = "snsapi_userinfo";
            String oauth_url = "https://open.weixin.qq.com/connect/oauth2/authorize?appid=wx5147218609f8df28&redirect_uri=" + redirect_uri + "&response_type=code&scope=" + scope + "&state=" + state + "#wechat_redirect";
            return "redirect:" + oauth_url;
        } else {
            return "redirect:" + goto_url;
        }
    }

    @At("/?/back")
    @Ok("re")
    @Filters
    public String back(String wxid, @Param("code") String code, HttpServletRequest req, HttpSession session) throws Exception {
        String wechat_goto_url = Strings.sNull(session.getAttribute("wechat_goto_url"));
        Wx_config config = wxConfigService.fetch(wxid);
        String fmt = "https://api.weixin.qq.com/sns/oauth2/access_token"
                + "?appid=%s"
                + "&secret=%s"
                + "&code=%s"
                + "&grant_type=authorization_code";
        String fmtUser = "https://api.weixin.qq.com/sns/userinfo?access_token=%s&openid=%s&lang=zh_CN ";


        String url = String.format(fmt, config.getAppid(), config.getAppsecret(), code);
        String json = Http.get(url).getContent();

        NutMap map = Json.fromJson(NutMap.class, json);
        String openid = map.getString("openid");
        String userInfoUrl = String.format(fmtUser, map.getString("access_token"), openid);
        WxApi2 wxApi2 = wxConfigService.getWxApi2(wxid);
        Wx_user usr = wxUserService.fetch(Cnd.where("openid", "=", openid).and("wxid", "=", wxid));

        // respjson = new String(respjson.getBytes("ISO-8859-1"), "utf-8");

       /* System.out.println("----------------------------------------------------------------------------------");
        System.out.println("the json is wechat is @@@@@@@@@@@" + respjson);
        System.out.println("----------------------------------------------------------------------------------");*/

        WxResp resp = Json.fromJson(WxResp.class, Http.get(userInfoUrl).getReader("UTF-8"));
        // WxResp resp = Json.fromJson(WxResp.class, respjson); //wxApi2.user_info(openid, "zh_CN");
        if (usr == null) {
            usr = Json.fromJson(Wx_user.class, Json.toJson(resp.user()));
            System.out.println("----------------------------------------------------------------------------------");
            System.out.println("user openid @" + usr.getOpenid() + " and  nickname @=" + usr.getNickname());
            System.out.println("----------------------------------------------------------------------------------");
            if (usr != null && usr.getNickname() != null) {
                usr.setNickname(Strings.sNull(EmojiParser.parseToAliases(usr.getNickname(), EmojiParser.FitzpatrickAction.REMOVE)));
                usr.setSubscribeAt((int) (resp.user().getSubscribe_time()));
                usr.setWxid(wxid);
                Wx_user ur = wxUserService.insert(usr);
                usr.setId(ur.getId());
                System.out.println("----------------------------------------------------------------------------------");
                System.out.println("user userid  @" + usr.getId());
                System.out.println("----------------------------------------------------------------------------------");
            }

        } else {
            String id = usr.getId();
            usr = Json.fromJson(Wx_user.class, Json.toJson(resp.user()));
            usr.setNickname(EmojiParser.parseToAliases(usr.getNickname(), EmojiParser.FitzpatrickAction.REMOVE));
            usr.setOpAt((int) (System.currentTimeMillis() / 1000));
            usr.setWxid(wxid);
            usr.setId(id);
            wxUserService.updateIgnoreNull(usr);
        }
        session.setAttribute("wxid", wxid);
        session.setAttribute("openid", usr.getOpenid());
        session.setAttribute("userid", usr.getId());
        System.out.println("session id 判断一下是否为空" + usr.getId());
        System.out.println("跳转路径是否正确" + wechat_goto_url);
        return "redirect:" + wechat_goto_url;
    }


    /**
     * 绑定个人信息
     *
     * @param name  姓名
     * @param phone 电话号码
     * @return
     */
    @At("/bindInfo")
    @Ok("json")
    public Object bindInfo(@Param("name") String name, @Param("phone") String phone, HttpServletRequest req, HttpSession session) {
        String openid = Strings.sNull(session.getAttribute("openid"));
        Cnd cnd = Cnd.NEW();
        try {
            String userid = (String) session.getAttribute("userid");
            cnd.and("wuserid", "=", userid);

            Wx_bargain bargain = wxBargainService.fetch(cnd);
            if (bargain != null && bargain.getId() != null)
                return Result.error("system.error");
            bargain = new Wx_bargain();
            bargain.setPrice(158f);
            bargain.setWuserid(userid);
            bargain.setName(name);
            bargain.setPhone(phone);
            bargain = wxBargainService.insert(bargain);
            //wxBargainService.update(Chain.me("name", name).add("phone", phone).add("price", 158), cnd);
            return Result.success("system.success", userid);
        } catch (Exception e) {
            e.printStackTrace();
            return Result.error("system.error");
        }
        // return wxBargainService.data(length, start, draw, null, null, cnd, null);
    }

    /**
     * 砍价逻辑
     *
     * @param id      对应的砍价项的ID
     * @param req
     * @param session
     * @return
     */
    @At("/bargainPrice")
    @Ok("json")
    public Object bargainPrice(@Param("id") String id, HttpServletRequest req, HttpSession session) {
        String openid = Strings.sNull(session.getAttribute("openid"));
        Cnd cnd = Cnd.NEW();
        try {
            String userid = (String) session.getAttribute("userid");

            cnd.and("id", "=", id);
            Wx_bargain bargain = wxBargainService.fetch(cnd);//查出当前砍价项对应的人的砍价项
            if (bargain == null)
                return Result.error("您的微信没有授权该活动哟！");
            log.debug("正在查询数据。。。。");
            Wx_bargain_detail detail = wxBargainDetailService.fetch(Cnd.where("1", "=", "1").and("wuserid",
                    "=", userid).and("bargainId", "=", bargain.getId()));//查出当前用户是否对这个砍价项已经砍过价了
            log.debug("查询数据结束");
            if (detail != null)
                return Result.error("您已砍价了！");
            Float currentPrice = bargain.getPrice();//当前价格


            Wx_bargain_config config = wxBargainConfigService.fetch("229f4f6f3acb42dea81579a6f9d2ef4f");
            Float minPrice = config.getMinPrice();// 最低价格
            if (bargain.getPrice() == minPrice)
                return Result.error("活动已结束");

            Float maxCurrentPrice = config.getMaxPrice();

            Float bargainMaxPrice = currentPrice - minPrice;//可以砍的最高价 1-10
            Float bargainFinalPrice = bargainPriceFn(bargainMaxPrice);

            Wx_bargain_detail wx_bargain_detail = new Wx_bargain_detail();
            wx_bargain_detail.setBarginPrice(bargainFinalPrice);
            wx_bargain_detail.setWuserid(userid);
            wx_bargain_detail.setBargainId(bargain.getId());
            wxBargainDetailService.insert(wx_bargain_detail);//加入砍价列表
            currentPrice = new BigDecimal(minPrice).add(new BigDecimal(bargainMaxPrice).subtract(new BigDecimal(bargainFinalPrice))).setScale(1, BigDecimal.ROUND_HALF_UP).floatValue();
            wxBargainService.update(Chain.make("price", currentPrice), cnd);//修改当前享受到的优惠价
            Wx_user user = wxUserService.fetch(Cnd.NEW().and("id", "=", userid));
            wx_bargain_detail.setNickname(user.getNickname());
            wx_bargain_detail.setHeadimgurl(user.getHeadimgurl());
            wx_bargain_detail.setCurrentPrice(currentPrice);
            return Result.success("system.success", wx_bargain_detail);
        } catch (Exception e) {
            log.error("砍价逻辑报错了@", e);
            return Result.error("system.error");
        }
        // return wxBargainService.data(length, start, draw, null, null, cnd, null);
    }

    /**
     * 当前还剩多少钱可以砍
     *
     * @param maxPrice
     * @return
     */
    private Float bargainPriceFn(Float maxPrice) {
        if (maxPrice < 0)
            return 0f;
        if (maxPrice <= 5 && maxPrice >= 0)
            return maxPrice;
        Integer randInt = 0;
        Float randFloat = 0f;
        while (true) {
            Random random = new Random();
            randInt = random.nextInt(100);
            randFloat = Float.valueOf(new String((randInt / 10.0 - 1) + ""));
            if (randFloat <= 10 && randFloat >= 1 && randFloat <= maxPrice - 2)
                break;
        }
        return randFloat;
    }


    /**
     * 当前所有参与砍价的人的信息列表
     *
     * @param length
     * @param start
     * @param draw
     * @return
     */
    @At("/bargainData")
    @Ok("json")
    public Object bargainData(@Param("length") int length, @Param("start") int start, @Param("draw") int draw) {
        Cnd cnd = Cnd.NEW();
        return wxBargainService.data(length, start, draw, null, null, cnd, null);
    }

    /**
     * 我当前砍的价格
     *
     * @param openid
     * @return
     */
    @At("?/myBargainData")
    @Ok("json")
    public Object myBargainData(@Param("openid") String openid) {
        Cnd cnd = Cnd.NEW();
        cnd.and("wuserid", "=", openid);
        return wxBargainService.query(cnd);
    }

    /**
     * 朋友帮我的砍价列表
     *
     * @param openid
     * @return
     */
    @At("?/myBargainDataList")
    @Ok("json")
    public Object myBargainDataList(@Param("openid") String openid) {
        Cnd cnd = Cnd.NEW();
        cnd.and("wuserid", "=", openid);
        List<Wx_bargain> ws = wxBargainService.query(cnd);
        if (ws == null || ws.size() <= 0)
            return null;
        String id = ws.get(0).getId();
        cnd = Cnd.NEW();
        cnd.and("bargainId", "=", id);
        return wxBargainDetailService.query(cnd);
    }


    @At("/act/signData")
    @Ok("json")
    public Object signData(@Param("id") String id, HttpServletRequest req, HttpSession session) throws Exception {
        Wx_bargain bargain = wxBargainService.fetch(Cnd.NEW().and("id", "=", id));
        if (bargain == null) {
            return Result.error("system.error");
        }
        try {
            wxBargainService.update(Chain.make("signIn", 1), Cnd.NEW().and("id", "=", id));
        } catch (Exception e) {
            return Result.error("system.error");
        }
        return Result.success("system.success");
    }

    /**
     * 消费页面
     *
     * @param req
     * @param session
     * @return
     * @throws Exception
     */
    @At("/act/signIn")
    @Ok("re")
    @Filters
    public String signIn(HttpServletRequest req, HttpSession session) throws Exception {
        String userid = Strings.sNull(session.getAttribute("userid"));

        if (StringUtils.isNotEmpty(userid)) {
            req.setAttribute("error", false);
        } else {
            req.setAttribute("error", true);
            return "redirect:http://" + Globals.AppDomain + "/public/wx/wechat/68a31121968a400ab8d46f57323bfcb8/oauth?goto_url=/public/wx/wechat/act/signIn";
        }
        Wx_bargain_config config = wxBargainConfigService.fetch("229f4f6f3acb42dea81579a6f9d2ef4f");

        int count = wxBargainService.count();


        List<Wx_bargain> bargains = wxBargainService.query();
        List<Wx_bargain> reBargains = new ArrayList<>();
        for (Wx_bargain bargain1 : bargains) {
            Wx_user user = wxUserService.fetch(Cnd.NEW().and("id", "=", bargain1.getWuserid()));
            bargain1.setNickname(user.getNickname());
            bargain1.setHeadimgurl(user.getHeadimgurl());
            reBargains.add(bargain1);
        }
        req.setAttribute("bargains", reBargains);
        req.setAttribute("bargainsCount", reBargains.size());

        req.setAttribute("config", config);
        req.setAttribute("count", count);

        return "beetl:public/wx/cms/signIn.html";
        //req.setAttribute("details", details);
    }

    /**
     * 首页
     *
     * @param req
     * @param session
     * @throws Exception
     */
    @At("/act/index")
    @Ok("re")
    @Filters
    public String actIndex(@Param("id") String id, HttpServletRequest req, HttpSession session) throws Exception {
        String userid = Strings.sNull(session.getAttribute("userid"));
        if (StringUtils.isNotEmpty(userid)) {
            req.setAttribute("error", false);
        } else {
            req.setAttribute("error", true);
            return "redirect:http://" + Globals.AppDomain + "/public/wx/wechat/68a31121968a400ab8d46f57323bfcb8/oauth?goto_url=/public/wx/wechat/act/index";
        }

        Wx_bargain_config config = wxBargainConfigService.fetch("229f4f6f3acb42dea81579a6f9d2ef4f");

        Wx_bargain bargain = wxBargainService.fetch(Cnd.NEW().and("wuserid", "=", userid));
        if (bargain != null && bargain.getId() != null) {
            req.setAttribute("id", bargain.getId());
            req.setAttribute("join", true);
            return "redirect:http://" + Globals.AppDomain + "/public/wx/wechat/act/bargain?id=" + bargain.getId();
        } else {
            req.setAttribute("id", id);
            req.setAttribute("join", false);
        }

        int count = wxBargainService.count();
        List<Wx_bargain> bargains = wxBargainService.query();
        List<Wx_bargain> reBargains = new ArrayList<>();
        for (Wx_bargain detail : bargains) {
            Wx_user user = wxUserService.fetch(Cnd.NEW().and("id", "=", detail.getWuserid()));
            detail.setNickname(user.getNickname());
            detail.setHeadimgurl(user.getHeadimgurl());
            reBargains.add(detail);
        }
        req.setAttribute("count", count);
        req.setAttribute("bargains", reBargains);
        req.setAttribute("bargainsCount", reBargains.size());
        req.setAttribute("config", config);
        return "beetl:public/wx/cms/actIndex.html";
    }

    @At("/act/bargain")
    @Ok("re")
    @Filters
    public String bargain(@Param("id") String id, HttpServletRequest req, HttpSession session) throws Exception {
        String userid = Strings.sNull(session.getAttribute("userid"));

        if (StringUtils.isNotEmpty(userid)) {
            req.setAttribute("error", false);
        } else {
            req.setAttribute("error", true);
            return "redirect:http://" + Globals.AppDomain + "/public/wx/wechat/68a31121968a400ab8d46f57323bfcb8/oauth?goto_url=/public/wx/wechat/act/bargain?id=" + id;
        }
        Wx_bargain_config config = wxBargainConfigService.fetch("229f4f6f3acb42dea81579a6f9d2ef4f");

        Wx_bargain bargain = wxBargainService.fetch(Cnd.NEW().and("id", "=", id));
        if (bargain == null || bargain.getId() == null)
            return "redirect:http://" + Globals.AppDomain + "/public/wx/wechat/act/index";
        int count = wxBargainService.count();
        List<Wx_bargain_detail> details = wxBargainDetailService.query(Cnd.NEW().and("bargainId", "=", bargain.getId()));
        List<Wx_bargain_detail> reDetails = new ArrayList<>();
        for (Wx_bargain_detail detail : details) {
            Wx_user user = wxUserService.fetch(Cnd.NEW().and("id", "=", detail.getWuserid()));
            detail.setNickname(user.getNickname());
            detail.setHeadimgurl(user.getHeadimgurl());
            reDetails.add(detail);
        }

        Wx_bargain_detail detail = wxBargainDetailService.fetch(Cnd.where("1", "=", "1").and("wuserid",
                "=", userid).and("bargainId", "=", bargain.getId()));//查出当前用户是否对这个砍价项已经砍过价了

        Wx_bargain myBargain = wxBargainService.fetch(Cnd.NEW().and("wuserid", "=", userid));

        List<Wx_bargain> bargains = wxBargainService.query();
        List<Wx_bargain> reBargains = new ArrayList<>();
        for (Wx_bargain bargain1 : bargains) {
            Wx_user user = wxUserService.fetch(Cnd.NEW().and("id", "=", bargain1.getWuserid()));
            bargain1.setNickname(user.getNickname());
            bargain1.setHeadimgurl(user.getHeadimgurl());
            reBargains.add(bargain1);
        }
        req.setAttribute("bargains", reBargains);
        req.setAttribute("bargainsCount", reBargains.size());

        if (myBargain == null)
            req.setAttribute("hasMyBargain", false);
        else
            req.setAttribute("hasMyBargain", true);
        if (bargain.getPrice() <= config.getMinPrice()) {
            req.setAttribute("actEnd", true);
        } else {
            req.setAttribute("actEnd", false);
        }

        req.setAttribute("config", config);
        req.setAttribute("count", count);
        req.setAttribute("bargain", bargain);
        req.setAttribute("details", reDetails);
        req.setAttribute("detailsCount", reDetails.size());

        if (detail != null)
            req.setAttribute("hasBargain", true);
        else
            req.setAttribute("hasBargain", false);

        return "beetl:public/wx/cms/bargain.html";
        //req.setAttribute("details", details);
    }
}
