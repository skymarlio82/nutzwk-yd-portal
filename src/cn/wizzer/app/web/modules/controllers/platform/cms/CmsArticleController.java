package cn.wizzer.app.web.modules.controllers.platform.cms;

import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.shiro.subject.Subject;
import org.nutz.dao.Cnd;
import org.nutz.dao.Sqls;
import org.nutz.dao.entity.Record;
import org.nutz.dao.sql.Sql;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.lang.Strings;
import org.nutz.lang.util.NutMap;
import org.nutz.log.Log;
import org.nutz.log.Logs;
import org.nutz.mvc.adaptor.WhaleAdaptor;
import org.nutz.mvc.annotation.AdaptBy;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Ok;
import org.nutz.mvc.annotation.Param;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import cn.wizzer.app.cms.modules.models.Cms_article;
import cn.wizzer.app.cms.modules.models.Cms_channel;
import cn.wizzer.app.cms.modules.models.Cms_link;
import cn.wizzer.app.cms.modules.models.Cms_link_class;
import cn.wizzer.app.cms.modules.services.CmsArticleService;
import cn.wizzer.app.cms.modules.services.CmsChannelService;
import cn.wizzer.app.cms.modules.services.CmsLinkClassService;
import cn.wizzer.app.cms.modules.services.CmsLinkService;
import cn.wizzer.app.sys.modules.models.Sys_user;
import cn.wizzer.app.web.commons.slog.annotation.SLog;
import cn.wizzer.framework.base.Result;
import cn.wizzer.framework.page.datatable.DataTableColumn;
import cn.wizzer.framework.page.datatable.DataTableOrder;

/**
 * Created by wizzer on 2016/6/28.
 */
@IocBean
@At("/platform/cms/article")
public class CmsArticleController {
    private static final Log log = Logs.get();
    @Inject
    private CmsArticleService cmsArticleService;
    @Inject
    private CmsChannelService cmsChannelService;
    @Inject
    private CmsLinkService cmsLinkService;

    @Inject
    private CmsLinkClassService cmsLinkClassService;

    @At("")
    @Ok("beetl:/platform/cms/article/index.html")
    @RequiresPermissions("cms.content.article")
    public void index() {
    }

    @At
    @Ok("json")
    @RequiresPermissions("cms.content.article")
    public Object tree(@Param("pid") String pid) {
        List<Cms_channel> list = cmsChannelService.query(Cnd.where("parentId", "=", Strings.sBlank(pid)).asc("location").asc("path"));
        List<Map<String, Object>> tree = new ArrayList<>();
        if (Strings.isBlank(pid)) {
            Map<String, Object> obj = new HashMap<>();
            obj.put("id", "0");
            obj.put("text", "所有栏目");
            obj.put("children", false);
            obj.put("opened",true);
            tree.add(obj);
        }
        Map<String,Object> state = new HashMap<>();
        state.put("opened",true);
        for (Cms_channel channel : list) {
            Map<String, Object> obj = new HashMap<>();
            obj.put("id", channel.getId());
            obj.put("text", channel.getName());
            obj.put("children", channel.isHasChildren());
            obj.put("state",state);
            List<Cms_channel> sonlist = cmsChannelService.query(Cnd.where("parentId", "=", Strings.sBlank(channel.getId())).asc("location").asc("path"));
            List<Map<String,Object>> list_map = new ArrayList<>();
            for (int i = 0; i < sonlist.size(); i++) {
                Cms_channel cl = sonlist.get(i);
                Map<String, Object> sonobj = new HashMap<>();
                sonobj.put("id", cl.getId());
                sonobj.put("text", cl.getName());
                sonobj.put("children", cl.isHasChildren());
                sonobj.put("state",state);

                list_map.add(sonobj);
            }
            obj.put("children",list_map);
             tree.add(obj);
        }
        return tree;
    }


    @At("/treeObj")
    @Ok("json")
    @RequiresPermissions("cms.content.article")
    public Object treeObj(@Param("pid") String pid) {
        List<Cms_link_class> list = cmsLinkClassService.query(Cnd.where("1", "=", "1"));

        List<Map<String, Object>> tree = new ArrayList<>();
        for (Cms_link_class channel : list) {
            Map<String, Object> obj = new HashMap<>();
            obj.put("id", channel.getId());
            obj.put("text", channel.getName());
            tree.add(obj);
        }
        return tree;
    }


    @At
    @Ok("json:full")
    @RequiresPermissions("cms.content.article")
    public Object data(@Param("channelId") String channelId, @Param("title") String title,@Param("mp") String mp, @Param("length") int length, @Param("start") int start, @Param("draw") int draw, @Param("::order") List<DataTableOrder> order, @Param("::columns") List<DataTableColumn> columns) {
        Cnd cnd = Cnd.NEW();
        if (!Strings.isBlank(channelId) && !"0".equals(channelId)) {
            cnd.and("channelId", "like", "%" + channelId + "%");
        }
        if (!Strings.isBlank(title)) {
            cnd.and("title", "like", "%" + title + "%");
        }
        if(!Strings.isBlank(mp)){
            cnd.and("title","like","%"+mp+"%");
        }
        cnd.orderBy("sort", "desc");
        NutMap nutMap = cmsArticleService.data(length, start, draw, order, columns, cnd, null);
        List<Cms_article> records = (List<Cms_article>) nutMap.get("data");
        List<Cms_article> articles = new ArrayList<>();
        for (Cms_article article : records) {
            Cms_link link = cmsLinkService.fetch(Cnd.NEW().and("id", "=", article.getTopLink()));

            if (link != null) {
                Cms_link_class cms_link_class = cmsLinkClassService.fetch(link.getClassId());
                if (cms_link_class != null)
                    article.setTopLinkName(cms_link_class.getName());
            }
            articles.add(article);
        }
        nutMap.put("data", articles);
        return nutMap;
    }

    @At
    @Ok("beetl:/platform/cms/article/add.html")
    @RequiresPermissions("cms.content.article")
    public void add(@Param("channelId") String channelId, HttpServletRequest req) {
        req.setAttribute("channel", channelId != null && !"0".equals(channelId) ? cmsChannelService.fetch(channelId) : null);
        Subject subject = SecurityUtils.getSubject();
        Sys_user user = (Sys_user) subject.getPrincipal();
        req.setAttribute("username", user == null ? "" : user.getUsername());
    }

    @At
    @Ok("json")
    @RequiresPermissions("cms.content.article.add")
    @SLog(tag = "添加文章", msg = "文章标题:${args[0].title}")
    @AdaptBy(type = WhaleAdaptor.class)
    public Object addDo(@Param("..") Cms_article article, @Param("at") String at, HttpServletRequest req) {
        try {
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            int publishAt = (int) (sdf.parse(at).getTime() / 1000);
            article.setPublishAt(publishAt);

            Sql sql = Sqls.createf("select COALESCE(MAX(sort),0)+1 from cms_article where channelId = @channelId ", article.getChannelId());
            List<Record> records = cmsArticleService.list(sql);
            if (records != null && records.size() <= 0) {
                Record record = records.get(0);
                int sort = record.getInt("sort");
                article.setSort(sort);
            }

            if(article.getSort() == null) article.setSort(0);
            cmsArticleService.insert(article);

            return Result.success("system.success");
        } catch (Exception e) {
            return Result.error("system.error");
        }
    }

    @At("/edit/?")
    @Ok("beetl:/platform/cms/article/edit.html")
    @RequiresPermissions("cms.content.article")
    public Object edit(String id, HttpServletRequest req) {
        Cms_article article = cmsArticleService.fetch(id);
        if (StringUtils.isNotEmpty(article.getPicurl())) {
            String[] pics = article.getPicurl().split(",");
            req.setAttribute("pics", pics);
        }
        req.setAttribute("channel", article != null ? cmsChannelService.fetch(article.getChannelId()) : null);
        return article;
    }


    @At
    @Ok("json")
    @RequiresPermissions("cms.content.article.edit")
    public Object cancleLink(@Param("id") String id, HttpServletRequest req) {
        try {

            Cms_article article = cmsArticleService.fetch(Cnd.NEW().and("topLink", "=", id));
            article.setTopLink("");
            cmsArticleService.updateIgnoreNull(article);
            cmsLinkService.delete(id);

            return Result.success("system.success");
        } catch (Exception e) {
            return Result.error("system.error");
        }
    }


    @At
    @Ok("json")
    @RequiresPermissions("cms.content.article.edit")
    public Object toplink(@Param("id") String id, @Param("type") String type, @Param("classId") String classId, HttpServletRequest req) {
        try {

            Cms_article article = cmsArticleService.fetch(id);//cmsArticleService.fetch(id);

            Cms_link link = new Cms_link();
            link.setClassId(classId);
            link.setName(article.getTitle());
            link.setPicurl(article.getPicurl());
            link.setUrl(article.getId());
            link.setType(type);
            link = cmsLinkService.insert(link);
            article.setTopLink(link.getId());
            cmsArticleService.updateIgnoreNull(article);
            return Result.success("system.success");
        } catch (Exception e) {
            return Result.error("system.error");
        }
    }

    @At
    @Ok("json")
    @RequiresPermissions("cms.content.article.edit")
    @AdaptBy(type = WhaleAdaptor.class)
    public Object makeTop(@Param("id") String id, HttpServletRequest req) {
        try {

            Cms_article article = cmsArticleService.fetch(id);//cmsArticleService.fetch(id);


            Sql sql = Sqls.createf("select IFNULL(MAX(sort),0)+1 as sort from cms_article where channelId = @channelId ").setParam("channelId", article.getChannelId());

            List<Record> records = cmsArticleService.list(sql);
            if (records != null && records.size() >= 0) {
                Record record = records.get(0);
                int sort = record.getInt("sort");
                if (sort <= 0)
                    sort = 1;
                article.setSort(sort);
            }


            cmsArticleService.updateIgnoreNull(article);
            return Result.success("system.success");
        } catch (Exception e) {
            return Result.error("system.error");
        }
    }

    @At
    @Ok("json")
    @RequiresPermissions("cms.content.article.edit")
    @SLog(tag = "添加文章", msg = "文章标题:${args[0].title}")
    @AdaptBy(type = WhaleAdaptor.class)
    public Object editDo(@Param("..") Cms_article article, @Param("at") String at, HttpServletRequest req) {
        try {
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            int publishAt = (int) (sdf.parse(at).getTime() / 1000);
            article.setPublishAt(publishAt);

            Sql sql = Sqls.createf("select COALESCE(MAX(sort),0)+1 as sort from cms_article where channelId = @channelId ", article.getChannelId());
            List<Record> records = cmsArticleService.list(sql);
            if (records != null && records.size() <= 0) {
                Record record = records.get(0);
                int sort = record.getInt("sort");
                article.setSort(sort);
            }

            if(article.getSort() == null) article.setSort(0);
            cmsArticleService.updateIgnoreNull(article);
            return Result.success("system.success");
        } catch (Exception e) {
            return Result.error("system.error");
        }
    }


    @At("/enable/?")
    @Ok("json")
    @RequiresPermissions("cms.content.article.edit")
    @SLog(tag = "发布文章", msg = "文章标题:${args[1].getAttribute('title')}")
    public Object enable(String id, HttpServletRequest req) {
        try {
            req.setAttribute("title", cmsArticleService.fetch(id).getTitle());
            cmsArticleService.update(org.nutz.dao.Chain.make("disabled", false), Cnd.where("id", "=", id));
            return Result.success("system.success");
        } catch (Exception e) {
            return Result.error("system.error");
        }
    }

    @At("/disable/?")
    @Ok("json")
    @RequiresPermissions("cms.content.article.edit")
    @SLog(tag = "取消发布", msg = "文章标题:${args[1].getAttribute('title')}")
    public Object disable(String id, HttpServletRequest req) {
        try {
            req.setAttribute("title", cmsArticleService.fetch(id).getTitle());
            cmsArticleService.update(org.nutz.dao.Chain.make("disabled", true), Cnd.where("id", "=", id));
            return Result.success("system.success");
        } catch (Exception e) {
            return Result.error("system.error");
        }
    }

    @At("/toplink/?")
    @Ok("beetl:/platform/cms/article/topLink.html")
    @RequiresPermissions("cms.content.article.edit")
    public void toLink(String id, HttpServletRequest req) {
        Cms_article article = cmsArticleService.fetch(id);
        req.setAttribute("obj", article);
    }

    @At({"/delete/?", "/delete"})
    @Ok("json")
    @RequiresPermissions("cms.content.article.delete")
    @SLog(tag = "删除文章", msg = "ID:${args[2].getAttribute('id')}")
    public Object delete(String oneId, @Param("ids") String[] ids, HttpServletRequest req) {
        try {
            if (ids != null && ids.length > 0) {


                List<Cms_article> articles = cmsArticleService.query(Cnd.where("id", "in", ids));
                for (Cms_article article : articles) {
                    if (StringUtils.isNotEmpty(article.getTopLink()))
                        cmsLinkService.delete(article.getTopLink());
                }
                cmsArticleService.delete(ids);

                req.setAttribute("id", org.apache.shiro.util.StringUtils.toString(ids));
            } else {
                Cms_article cms_article = cmsArticleService.fetch(oneId);
                if (StringUtils.isNotEmpty(cms_article.getTopLink()))
                    cmsLinkService.delete(cms_article.getTopLink());
                cmsArticleService.delete(oneId);
                req.setAttribute("id", oneId);
            }
            return Result.success("system.success");
        } catch (Exception e) {
            e.printStackTrace();
            return Result.error("system.error");
        }
    }
}
