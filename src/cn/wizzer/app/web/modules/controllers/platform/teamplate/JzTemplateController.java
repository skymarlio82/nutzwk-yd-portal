package cn.wizzer.app.web.modules.controllers.platform.teamplate;

import cn.wizzer.framework.base.Result;
import cn.wizzer.app.web.commons.slog.annotation.SLog;
import cn.wizzer.framework.page.datatable.DataTableColumn;
import cn.wizzer.framework.page.datatable.DataTableOrder;
import cn.wizzer.framework.util.StringUtil;
import cn.wizzer.app.teamplate.modules.models.JZ_Template;
import cn.wizzer.app.teamplate.modules.services.JzTemplateService;
import org.apache.shiro.authz.annotation.RequiresAuthentication;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.nutz.dao.Cnd;
import org.nutz.lang.Strings;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.mvc.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@IocBean
@At("/platform/teamplate/template")
public class JzTemplateController{
    @Inject
	private JzTemplateService jzTemplateService;

    @At("")
	@Ok("beetl:/platform/teamplate/template/index.html")
    @RequiresPermissions("platform.teamplate.template")
	public void index() {

	}

	@At("/data")
    @Ok("json")
    @RequiresPermissions("platform.teamplate.template")
    public Object data(@Param("length") int length, @Param("start") int start, @Param("draw") int draw, @Param("::order") List<DataTableOrder> order, @Param("::columns") List<DataTableColumn> columns) {
		Cnd cnd = Cnd.NEW();
    	return jzTemplateService.data(length, start, draw, order, columns, cnd, null);
    }

    @At("/add")
    @Ok("beetl:/platform/teamplate/template/add.html")
    @RequiresPermissions("platform.teamplate.template")
    public void add() {

    }

    @At("/addDo")
    @Ok("json")
    @RequiresPermissions("platform.teamplate.template.add")
    @SLog(tag = "JZ_Template", msg = "${args[0].id}")
    public Object addDo(@Param("..")JZ_Template jzTemplate, HttpServletRequest req) {
		try {
		    jzTemplate.setCreateTime((int) (System.currentTimeMillis() / 1000));
		    jzTemplate.setUpdateTime((int) (System.currentTimeMillis() / 1000));
            DateFormat df = new SimpleDateFormat("yyyyMMddHHMMSS");
		    jzTemplate.setTemplateNo("NO"+df.format(new Date()));
			jzTemplateService.insert(jzTemplate);
			return Result.success("system.success");
		} catch (Exception e) {
			return Result.error("system.error");
		}
    }

    @At("/edit/?")
    @Ok("beetl:/platform/teamplate/template/edit.html")
    @RequiresPermissions("platform.teamplate.template")
    public void edit(String id,HttpServletRequest req) {
		req.setAttribute("obj", jzTemplateService.fetch(id));
    }

    @At("/editDo")
    @Ok("json")
    @RequiresPermissions("platform.teamplate.template.edit")
    @SLog(tag = "JZ_Template", msg = "${args[0].id}")
    public Object editDo(@Param("..")JZ_Template jzTemplate, HttpServletRequest req) {
		try {
            jzTemplate.setOpBy(StringUtil.getUid());
			jzTemplate.setOpAt((int) (System.currentTimeMillis() / 1000));
            jzTemplate.setUpdateTime(Integer.valueOf(new Date().getTime()+""));
			jzTemplateService.updateIgnoreNull(jzTemplate);
			return Result.success("system.success");
		} catch (Exception e) {
			return Result.error("system.error");
		}
    }

    @At({"/delete/?", "/delete"})
    @Ok("json")
    @RequiresPermissions("platform.teamplate.template.delete")
    @SLog(tag = "JZ_Template", msg = "${req.getAttribute('id')}")
    public Object delete(String id, @Param("ids")  String[] ids, HttpServletRequest req) {
		try {
			if(ids!=null&&ids.length>0){
				jzTemplateService.delete(ids);
    			req.setAttribute("id", org.apache.shiro.util.StringUtils.toString(ids));
			}else{
				jzTemplateService.delete(id);
    			req.setAttribute("id", id);
			}
            return Result.success("system.success");
        } catch (Exception e) {
            return Result.error("system.error");
        }
    }

    @At("/detail/?")
    @Ok("beetl:/platform/teamplate/template/detail.html")
    @RequiresPermissions("platform.teamplate.template")
	public void detail(String id, HttpServletRequest req) {
		if (!Strings.isBlank(id)) {
            req.setAttribute("obj", jzTemplateService.fetch(id));
		}else{
            req.setAttribute("obj", null);
        }
    }

}
