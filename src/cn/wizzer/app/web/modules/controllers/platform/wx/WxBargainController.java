package cn.wizzer.app.web.modules.controllers.platform.wx;

import cn.wizzer.framework.base.Result;
import cn.wizzer.app.web.commons.slog.annotation.SLog;
import cn.wizzer.framework.page.datatable.DataTableColumn;
import cn.wizzer.framework.page.datatable.DataTableOrder;
import cn.wizzer.framework.util.StringUtil;
import cn.wizzer.app.wx.modules.models.Wx_bargain;
import cn.wizzer.app.wx.modules.services.WxBargainService;
import org.apache.shiro.authz.annotation.RequiresAuthentication;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.nutz.dao.Cnd;
import org.nutz.lang.Strings;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.mvc.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@IocBean
@At("/platform/wx/bargain")
public class WxBargainController{
    @Inject
	private WxBargainService wxBargainService;

    @At("")
	@Ok("beetl:/platform/wx/bargain/index.html")
    @RequiresPermissions("platform.wx.bargain")
	public void index() {

	}

	@At("/data")
    @Ok("json")
    @RequiresPermissions("platform.wx.bargain")
    public Object data(@Param("length") int length, @Param("start") int start, @Param("draw") int draw, @Param("::order") List<DataTableOrder> order, @Param("::columns") List<DataTableColumn> columns) {
		Cnd cnd = Cnd.NEW();
    	return wxBargainService.data(length, start, draw, order, columns, cnd, null);
    }

    @At("/add")
    @Ok("beetl:/platform/wx/bargain/add.html")
    @RequiresPermissions("platform.wx.bargain")
    public void add() {

    }

    @At("/addDo")
    @Ok("json")
    @RequiresPermissions("platform.wx.bargain.add")
    @SLog(tag = "Wx_bargain", msg = "${args[0].id}")
    public Object addDo(@Param("..")Wx_bargain wxBargain, HttpServletRequest req) {
		try {
			wxBargainService.insert(wxBargain);
			return Result.success("system.success");
		} catch (Exception e) {
			return Result.error("system.error");
		}
    }

    @At("/edit/?")
    @Ok("beetl:/platform/wx/bargain/edit.html")
    @RequiresPermissions("platform.wx.bargain")
    public void edit(String id,HttpServletRequest req) {
		req.setAttribute("obj", wxBargainService.fetch(id));
    }

    @At("/editDo")
    @Ok("json")
    @RequiresPermissions("platform.wx.bargain.edit")
    @SLog(tag = "Wx_bargain", msg = "${args[0].id}")
    public Object editDo(@Param("..")Wx_bargain wxBargain, HttpServletRequest req) {
		try {
            wxBargain.setOpBy(StringUtil.getUid());
			wxBargain.setOpAt((int) (System.currentTimeMillis() / 1000));
			wxBargainService.updateIgnoreNull(wxBargain);
			return Result.success("system.success");
		} catch (Exception e) {
			return Result.error("system.error");
		}
    }

    @At({"/delete/?", "/delete"})
    @Ok("json")
    @RequiresPermissions("platform.wx.bargain.delete")
    @SLog(tag = "Wx_bargain", msg = "${req.getAttribute('id')}")
    public Object delete(String id, @Param("ids")  String[] ids, HttpServletRequest req) {
		try {
			if(ids!=null&&ids.length>0){
				wxBargainService.delete(ids);
    			req.setAttribute("id", org.apache.shiro.util.StringUtils.toString(ids));
			}else{
				wxBargainService.delete(id);
    			req.setAttribute("id", id);
			}
            return Result.success("system.success");
        } catch (Exception e) {
            return Result.error("system.error");
        }
    }

    @At("/detail/?")
    @Ok("beetl:/platform/wx/bargain/detail.html")
    @RequiresPermissions("platform.wx.bargain")
	public void detail(String id, HttpServletRequest req) {
		if (!Strings.isBlank(id)) {
            req.setAttribute("obj", wxBargainService.fetch(id));
		}else{
            req.setAttribute("obj", null);
        }
    }

}
