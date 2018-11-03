package cn.wizzer.app.web.modules.controllers.platform.cms;

import cn.wizzer.framework.base.Result;
import cn.wizzer.app.web.commons.slog.annotation.SLog;
import cn.wizzer.framework.page.datatable.DataTableColumn;
import cn.wizzer.framework.page.datatable.DataTableOrder;
import cn.wizzer.framework.util.StringUtil;
import cn.wizzer.app.cms.modules.models.Cms_feedback;
import cn.wizzer.app.cms.modules.services.CmsFeedbackService;
import org.apache.shiro.authz.annotation.RequiresAuthentication;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.nutz.dao.Cnd;
import org.nutz.lang.Strings;
import org.nutz.log.Log;
import org.nutz.log.Logs;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.mvc.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@IocBean
@At("/platform/cms/feedback")
public class CmsFeedbackController{
    private static final Log log = Logs.get();
    @Inject
    private CmsFeedbackService cmsFeedbackService;

    @At("")
    @Ok("beetl:/platform/cms/feedback/index.html")
    @RequiresPermissions("platform.cms.feedback")
    public void index() {
    }

    @At("/data")
    @Ok("json:full")
    @RequiresPermissions("platform.cms.feedback")
    public Object data(@Param("length") int length, @Param("start") int start, @Param("draw") int draw, @Param("::order") List<DataTableOrder> order, @Param("::columns") List<DataTableColumn> columns) {
		Cnd cnd = Cnd.NEW();
    	return cmsFeedbackService.data(length, start, draw, order, columns, cnd, null);
    }

    @At("/add")
    @Ok("beetl:/platform/cms/feedback/add.html")
    @RequiresPermissions("platform.cms.feedback")
    public void add() {

    }

    @At("/addDo")
    @Ok("json")
    @RequiresPermissions("platform.cms.feedback.add")
    @SLog(tag = "Cms_feedback", msg = "${args[0].id}")
    public Object addDo(@Param("..")Cms_feedback cmsFeedback, HttpServletRequest req) {
		try {
			cmsFeedbackService.insert(cmsFeedback);
			return Result.success("system.success");
		} catch (Exception e) {
			return Result.error("system.error");
		}
    }

    @At("/edit/?")
    @Ok("beetl:/platform/cms/feedback/edit.html")
    @RequiresPermissions("platform.cms.feedback")
    public void edit(String id,HttpServletRequest req) {
		req.setAttribute("obj", cmsFeedbackService.fetch(id));
    }

    @At("/editDo")
    @Ok("json")
    @RequiresPermissions("platform.cms.feedback.edit")
    @SLog(tag = "Cms_feedback", msg = "${args[0].id}")
    public Object editDo(@Param("..")Cms_feedback cmsFeedback, HttpServletRequest req) {
		try {
            cmsFeedback.setOpBy(StringUtil.getUid());
			cmsFeedback.setOpAt((int) (System.currentTimeMillis() / 1000));
			cmsFeedbackService.updateIgnoreNull(cmsFeedback);
			return Result.success("system.success");
		} catch (Exception e) {
			return Result.error("system.error");
		}
    }

    @At({"/delete/?", "/delete"})
    @Ok("json")
    @RequiresPermissions("platform.cms.feedback.delete")
    @SLog(tag = "Cms_feedback", msg = "${req.getAttribute('id')}")
    public Object delete(String id, @Param("ids")  String[] ids, HttpServletRequest req) {
		try {
			if(ids!=null&&ids.length>0){
				cmsFeedbackService.delete(ids);
    			req.setAttribute("id", org.apache.shiro.util.StringUtils.toString(ids));
			}else{
				cmsFeedbackService.delete(id);
    			req.setAttribute("id", id);
			}
            return Result.success("system.success");
        } catch (Exception e) {
            return Result.error("system.error");
        }
    }

    @At("/detail/?")
    @Ok("beetl:/platform/cms/feedback/detail.html")
    @RequiresPermissions("platform.cms.feedback")
	public void detail(String id, HttpServletRequest req) {
        		if (!Strings.isBlank(id)) {
            req.setAttribute("obj", cmsFeedbackService.fetch(id));
		}else{
            req.setAttribute("obj", null);
        }}

}
