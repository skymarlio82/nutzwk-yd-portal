package cn.wizzer.app.web.modules.controllers.platform.app;

import org.apache.commons.lang.StringUtils;
import org.nutz.dao.Cnd;
import org.nutz.dao.Sqls;
import org.nutz.dao.sql.Sql;
import org.nutz.integration.jedis.RedisService;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Ok;
import org.nutz.mvc.annotation.Param;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import cn.wizzer.app.cms.modules.models.Cms_article;
import cn.wizzer.app.cms.modules.models.Cms_feedback;
import cn.wizzer.app.cms.modules.models.Cms_link_class;
import cn.wizzer.app.cms.modules.services.CmsArticleService;
import cn.wizzer.app.cms.modules.services.CmsChannelService;
import cn.wizzer.app.cms.modules.services.CmsFeedbackService;
import cn.wizzer.app.cms.modules.services.CmsLinkClassService;
import cn.wizzer.app.cms.modules.services.CmsLinkService;
import cn.wizzer.app.sys.modules.services.SysApiService;
import cn.wizzer.app.sys.modules.services.SysDictService;
import cn.wizzer.app.sys.modules.services.SysUnitService;
import cn.wizzer.framework.base.Result;
import cn.wizzer.framework.page.Pagination;
import cn.wizzer.framework.util.DateUtil;

/**
 * Created by Administrator on 2017/6/24.
 */
@IocBean
@At("/platform/interface/info")
public class InterfaceController {
    @Inject
    private SysUnitService      mSysUnitService;
    private SysApiService       mSysApiService;
    @Inject
    private RedisService        redisService;
    @Inject
    private SysDictService      mSysDictService;
    @Inject
    private CmsChannelService   mcmsChannelService;
    @Inject
    private CmsLinkClassService mCmsLinkClassService;
    @Inject
    private CmsArticleService   mCmsArticleService;
    @Inject
    private CmsLinkService      mCmsLinkService;

    @Inject
    private CmsFeedbackService cmsFeedbackService;

    /**
     * 接口 1
     * 获取栏目列表，该接口返回全部的栏目id ，
     * @param req
     * @return
     */
    @At("/getCarouselList")
    @Ok("json:full")
    public Object getCarouselList( String channel_id,HttpServletRequest req) {
        Result result = Result.NEW();
        try {
            Map<String,Object> data = mcmsChannelService.getJsonTree(channel_id);
            result.addCode(0);
            result.addMsg("查询成功");
            result.addData(data);
            return result;
        } catch (Exception e) {
            return Result.error("system.error");
        }
    }

    @At("/getSonCarouselList")
    @Ok("json:full")
    public Object getSonCarouselList(@Param("channel_id") String channel_id,HttpServletRequest req) {
        Result result = Result.NEW();
        try {
            Sql sql = Sqls.create("select id,name,parentid,url,target,(select name from cms_channel c where c.id = cms_channel.parentId) as parent_name from cms_channel where parentId = @parent_id and disabled = 0 order by path").setParam("parent_id",channel_id);
            Pagination page = mCmsArticleService.listPage(0,0,sql);
            result.addCode(0);
            result.addMsg("查询成功");
            result.addData(page);
            return result;
        } catch (Exception e) {
            return Result.error("system.error");
        }
    }

    /**
     * 接口 2
     * 栏目对应的文章列表
     * @param channel_id  栏目id  第一个接口返回的id  id来源 接口 1
     * @param page_no     分页的页码 从 1  开始 必填
     * @param page_size   分页的页码 10  开始 必填
     * @param req
     * @return
     */
    @At("/searchArticleList")
    @Ok("json:full")
    public Object searchArticleList(@Param("channel_id") String channel_id, @Param("page_no") int page_no, @Param("page_size") int page_size, HttpServletRequest req) {
        Result result = Result.NEW();
        try {
            Sql sql = Sqls.create("select id,cms_params,desp,picurl,file_data,title,info,channelId,(select parentId from cms_channel c where c.id = cms_article.channelId) as parent_id,DATE_FORMAT(FROM_UNIXTIME(publishAt),'%Y-%m-%d') as opAt,author from cms_article where disabled = 0 and channelId = @channelid order by sort desc, DATE_FORMAT(FROM_UNIXTIME(publishAt),'%Y-%m-%d') desc").setParam("channelid",channel_id);
            Pagination page = mCmsArticleService.listPage(page_no,page_size,sql);
            result.addCode(0);
            result.addMsg("查询成功");
            result.addData(page);
            return result;
        } catch (Exception e) {
            return Result.error("system.error");
        }
    }

    /**
     * 接口 3
     * 文章详情
     * @param id  文章的id  id来源 接口 2
     * @param req
     * @return
     */
    @At("/getArticle")
    @Ok("json:full")
    public Object getArticle(@Param("id")String id,
                             @Param("channel_id")String channel_id,
                             HttpServletRequest req) {
        Result result = Result.NEW();
        try {
            Cms_article article = null;
            if(StringUtils.isNotEmpty(id)){
                article = mCmsArticleService.fetch(id);
            }else{
                List<Cms_article> list = mCmsArticleService.query(Cnd.where("channelId","=",channel_id).orderBy("opat","desc"));
                if(null != list && list.size() > 0){
                    article = list.get(0);
                }
            }

            result.addCode(0);
            result.addMsg("查询成功");
            result.addData(article);
            return result;
        } catch (Exception e) {
            return Result.error("system.error");
        }
    }

    /**
     * 接口 4
     * banner 文章的id集合    获取 网页上边所有的banner,轮播图的位置
     * @param req
     * @return
     */
    @At("/getLinkClass")
    @Ok("json:full")
    public Object getLinkClass( HttpServletRequest req) {
        Result result = Result.NEW();
        try {
            List<Cms_link_class> data = mCmsLinkClassService.query();
            result.addCode(0);
            result.addMsg("查询成功");
            result.addData(data);
            return result;
        } catch (Exception e) {
            return Result.error("system.error");
        }
    }


    /**
     * 接口 6
     * banner 轮播图位置的 图片集合或者链接集合
     * @param classId  banner 或者 轮播图的id   id来还接口 5 返回
     * @param page_no
     * @param page_size
     * @param req
     * @return
     */
    @At("/searchLink")
    @Ok("json:full")
    public Object searchLink(@Param("classId")String classId,
                             @Param("page_no") int page_no,
                             @Param("page_size")int page_size,HttpServletRequest req) {
        Result result = Result.NEW();
        try {
            Sql sql = Sqls.create("select id,name,info,type,picurl,url from cms_link where classId = @classId order by opAt asc").setParam("classId",classId);
            Pagination page = mCmsLinkService.listPage(page_no,page_size,sql);
            result.addCode(0);
            result.addMsg("查询成功");
            result.addData(page);
            return result;
        } catch (Exception e) {
            return Result.error("system.error");
        }
    }

    @At("/addContact")
    @Ok("json:full")
    public Object addContact(@Param("name")String name,
                             @Param("email") String email,
                             @Param("subject")String subject,
                             @Param("phone")String phone,
                             @Param("message")String message,
                             HttpServletRequest req) {
        Result result = Result.NEW();
        try {
            Cms_feedback back = new Cms_feedback();
            back.setBackDate(DateUtil.getDateTime());
            back.setContent(message);
            back.setFeedpeople(name);
            back.setEmail(email);
            back.setPhone(phone);
            back.setSubject(subject);
            cmsFeedbackService.insert(back);
            return result;
        } catch (Exception e) {
            return Result.error("system.error");
        }
    }
}
