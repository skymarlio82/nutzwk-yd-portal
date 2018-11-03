package cn.wizzer.app.web.modules.controllers.platform.website;

import cn.wizzer.app.cms.modules.models.Cms_article;
import cn.wizzer.app.cms.modules.models.Cms_channel;
import cn.wizzer.app.cms.modules.services.CmsArticleService;
import cn.wizzer.framework.base.Result;
import org.apache.commons.lang3.StringUtils;
import org.nutz.dao.Cnd;
import org.nutz.dao.impl.sql.NutSql;
import org.nutz.dao.sql.Sql;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.lang.util.NutMap;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Ok;
import org.nutz.mvc.annotation.Param;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by remon on 2017/9/11.
 */
@IocBean
@At("/article")
public class ArticleController extends ZyyNavController {

    @Inject
    private CmsArticleService cmsArticleService;

    @At("")
    @Ok("json")
    public Object articleList(@Param("length") int length, @Param("start") int start, @Param("draw") int draw, @Param("type") String type, @Param("id") String id) {

        if ("list".equals(type)) {
            Sql sql = new NutSql("  select * from cms_article where channelId = '" + id + "' order by sort desc ");
            NutMap map = cmsArticleService.data(length, start, draw, sql, sql);
            return Result.success("system.success", map);
        } else if ("detail".equals(type)) {
            Cms_article cms_article = cmsArticleService.fetch(id);
            return Result.success("system.success", cms_article);
        }
        return Result.error("system.error");
    }

    @At("/newsJson")
    @Ok("json:full")
    public Object newJson(@Param(value = "length", df = "10") int length, @Param(value = "start", df = "0") int start,
                          @Param(value = "draw", df = "0") int draw, @Param("id") String id) {
        Sql arsql = new NutSql(" select * from cms_article where channelId = '" + id + "' order by sort desc ");
        NutMap nutMap = cmsArticleService.data(length, start, draw, arsql, arsql);
        return nutMap;
    }


    @At("/jsonNews")
    @Ok("json")
    public Object articleNewList(@Param(value = "length", df = "10") int length, @Param(value = "start", df = "0") int start,
                                 @Param(value = "draw", df = "0") int draw, @Param("id") String id) {
//        Cms_article article = cmsArticleService.fetch(id);
//        id= "d6acde7ddb8548d3b0261c82ec836845";
//        String channelId = article.getChannelId();
        Sql arsql = new NutSql(" select * from cms_article where channelId = '" + id + "' order by sort desc ");
//        List<Cms_channel> channels = new ArrayList<>();
//        if("ab806c93b2004603b9ec065c7c4c79c9".equals(id)){
//            channels.add(cms)
//        }
        List<Cms_channel> channels = cmsChannelService.query(Cnd.NEW().and("parentId", "=", id));
        NutMap nutMap = cmsArticleService.data(length, start, draw, arsql, arsql);
        int recordsFiltered = (int) nutMap.get("recordsFiltered");
        int recordsTotal = (int) nutMap.get("recordsTotal");
//            (recordsFiltered/recordsTotal)
//            StringFormatter.format()
        int pageCount = (int) Math.floor(recordsFiltered / recordsTotal);
        if (recordsFiltered % recordsTotal > 0) {
            pageCount++;
        }
        return Result.success("system.success", nutMap.get("data"));

    }

    @At("/newsList")
    @Ok("beetl:/public/web/newsList.html")
    public void articleNewList(@Param(value = "length", df = "10") int length, @Param(value = "start", df = "0") int start,
                               @Param(value = "draw", df = "0") int draw, @Param("childId") String childId, @Param("id") String id, HttpServletRequest req) {

        newsList(id, childId, length, start, draw, req);
    }

    private void newsList(String id, String childId, int length, int start, int draw, HttpServletRequest req) {
        //        Cms_article article = cmsArticleService.fetch(id);
//        String channelId = article.getChannelId();
        initNav(id, req);//初始化面包屑
//        List<Cms_channel> channels = new ArrayList<>();
//        if("ab806c93b2004603b9ec065c7c4c79c9".equals(id)){
//            channels.add(cms)
//        }
        List<Cms_channel> channels = cmsChannelService.query(Cnd.NEW().and("parentId", "=", id));
        if (StringUtils.isEmpty(childId)) {
            if (channels != null && channels.size() > 0)
                childId = channels.get(0).getId();
            else
                childId = id;
        }
        Sql arsql = new NutSql(" select * from cms_article where channelId = '" + childId + "' order by sort desc ");
        NutMap nutMap = cmsArticleService.data(length, start, draw, arsql, arsql);
        int recordsFiltered = (int) nutMap.get("recordsFiltered");
        int recordsTotal = (int) nutMap.get("recordsTotal");
//            (recordsFiltered/recordsTotal)
//            StringFormatter.format()
        int pageCount = (int) Math.floor(recordsFiltered / recordsTotal);
        if (recordsFiltered % recordsTotal > 0) {
            pageCount++;
        }
        req.setAttribute("id", id);
        req.setAttribute("childId", childId);
        req.setAttribute("articleList", nutMap.get("data"));
        req.setAttribute("recordsFiltered", recordsFiltered);
        req.setAttribute("draw", nutMap.get("draw"));
        req.setAttribute("length", length);
        req.setAttribute("recordsTotal", recordsTotal);
        req.setAttribute("childChannels", channels);
        req.setAttribute("pageCount", pageCount);
    }

    @At("/noticeList")
    @Ok("beetl:/public/web/noticeList.html")
    public void noticeList(@Param(value = "length", df = "10") int length, @Param(value = "start", df = "0") int start,
                           @Param(value = "draw", df = "0") int draw, @Param("childId") String childId, @Param("id") String id, HttpServletRequest req) {
        newsList(id, childId, length, start, draw, req);
    }


    @At("/detail")
    @Ok("beetl:/public/web/newDetail.html")
    public void articleDetail(@Param("id") String id, HttpServletRequest req) {
        Cms_article article = cmsArticleService.fetch(id);
        String channelId = article.getChannelId();
        initNav(channelId, req);
        req.setAttribute("detail", article);
    }

    @At("/details")
    @Ok("beetl:/public/web/detail.html")
    public void details(@Param("id") String id, HttpServletRequest req) {
        Cms_article article = cmsArticleService.fetch(id);
        String channelId = article.getChannelId();
        initNav(channelId, req);
        req.setAttribute("detail", article);
    }
}
