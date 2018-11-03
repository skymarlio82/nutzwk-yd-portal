package cn.wizzer.app.web.modules.controllers.platform.cms;

import cn.wizzer.app.cms.modules.models.Cms_banner;
import cn.wizzer.app.cms.modules.services.CmsBannerService;
import cn.wizzer.app.sys.modules.models.Sys_dict;
import cn.wizzer.app.sys.modules.services.SysDictService;
import cn.wizzer.app.web.commons.slog.annotation.SLog;
import cn.wizzer.framework.base.Result;
import cn.wizzer.framework.page.datatable.DataTableColumn;
import cn.wizzer.framework.page.datatable.DataTableOrder;
import cn.wizzer.framework.util.StringUtil;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.nutz.dao.Cnd;
import org.nutz.dao.impl.sql.NutSql;
import org.nutz.dao.sql.Sql;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.lang.Strings;
import org.nutz.log.Log;
import org.nutz.log.Logs;
import org.nutz.mvc.adaptor.WhaleAdaptor;
import org.nutz.mvc.annotation.AdaptBy;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Ok;
import org.nutz.mvc.annotation.Param;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@IocBean
@At("/platform/cms/banner")
public class CmsBannerController {
    private static final Log log = Logs.get();
    @Inject
    private CmsBannerService cmsBannerService;
    @Inject
    private SysDictService sysDictService;

    @At("")
    @Ok("beetl:/platform/cms/banner/index.html")
    @RequiresPermissions("platform.cms.banner")
    public void index() {
    }

    @At("/data")
    @Ok("json")
    @RequiresPermissions("platform.cms.banner")
    public Object data(@Param("length") int length, @Param("start") int start, @Param("draw") int draw, @Param("::order") List<DataTableOrder> order, @Param("::columns") List<DataTableColumn> columns) {
        Cnd cnd = Cnd.NEW();

        Sql sql = new NutSql(" select cb.id as id,cb.title as title,cb.content as content ,cb.imgurl as imgurl " +
                ",cb.isFlag  as isflag , sd.name as `type` ,cb.jumpurl as jumpurl from cms_banner cb left join sys_dict sd on cb.type = sd.code " +
                " where sd.parentid = '1082af6ea68a423f8980f7721a84b2bf' ");

        return cmsBannerService.data(length,start,draw,sql,sql);
    }


    @At("/add")
    @Ok("beetl:/platform/cms/banner/add.html")
    @RequiresPermissions("platform.cms.banner")
    public void add(HttpServletRequest req) {
        //类型 数据字典
        List<Sys_dict> types = sysDictService.getSubListByCode("cms_banner");
        req.setAttribute("types", types);
    }

    @At("/addDo")
    @Ok("json")
    @RequiresPermissions("platform.cms.banner.add")
    @SLog(tag = "Cms_banner", msg = "${args[0].id}")
    @AdaptBy(type = WhaleAdaptor.class)
    public Object addDo(@Param("..") Cms_banner cmsBanner, HttpServletRequest req) {
        try {
            cmsBannerService.insert(cmsBanner);
            return Result.success("system.success");
        } catch (Exception e) {
            return Result.error("system.error");
        }
    }

    @At("/edit/?")
    @Ok("beetl:/platform/cms/banner/edit.html")
    @RequiresPermissions("platform.cms.banner")
    public void edit(String id, HttpServletRequest req) {
        List<Sys_dict> types = sysDictService.getSubListByCode("cms_banner");
        req.setAttribute("types", types);
        req.setAttribute("obj", cmsBannerService.fetch(id));
    }

    @At("/editDo")
    @Ok("json")
    @RequiresPermissions("platform.cms.banner.edit")
    @SLog(tag = "Cms_banner", msg = "${args[0].id}")
    @AdaptBy(type = WhaleAdaptor.class)//文件上传时需此注解
    public Object editDo(@Param("..") Cms_banner cmsBanner, HttpServletRequest req) {
        try {
            cmsBanner.setOpBy(StringUtil.getUid());
            cmsBanner.setOpAt((int) (System.currentTimeMillis() / 1000));
            cmsBannerService.updateIgnoreNull(cmsBanner);
            return Result.success("system.success");
        } catch (Exception e) {
            return Result.error("system.error");
        }
    }

    @At({"/delete/?", "/delete"})
    @Ok("json")
    @RequiresPermissions("platform.cms.banner.delete")
    @SLog(tag = "Cms_banner", msg = "${req.getAttribute('id')}")
    public Object delete(String id, @Param("ids") String[] ids, HttpServletRequest req) {
        try {
            if (ids != null && ids.length > 0) {
                cmsBannerService.delete(ids);
                req.setAttribute("id", org.apache.shiro.util.StringUtils.toString(ids));
            } else {
                cmsBannerService.delete(id);
                req.setAttribute("id", id);
            }
            return Result.success("system.success");
        } catch (Exception e) {
            return Result.error("system.error");
        }
    }

    @At("/detail/?")
    @Ok("beetl:/platform/cms/banner/detail.html")
    @RequiresPermissions("platform.cms.banner")
    public void detail(String id, HttpServletRequest req) {
        if (!Strings.isBlank(id)) {
            req.setAttribute("obj", cmsBannerService.fetch(id));
        } else {
            req.setAttribute("obj", null);
        }
    }

}
