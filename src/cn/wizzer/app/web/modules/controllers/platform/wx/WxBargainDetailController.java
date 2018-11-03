package cn.wizzer.app.web.modules.controllers.platform.wx;

import cn.wizzer.framework.base.Result;
import cn.wizzer.app.web.commons.slog.annotation.SLog;
import cn.wizzer.framework.page.datatable.DataTableColumn;
import cn.wizzer.framework.page.datatable.DataTableOrder;
import cn.wizzer.framework.util.StringUtil;
import cn.wizzer.app.wx.modules.models.Wx_bargain_detail;
import cn.wizzer.app.wx.modules.services.WxBargainDetailService;
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
@At("/platform/wx/bargain/detail")
public class WxBargainDetailController{
    @Inject
	private WxBargainDetailService wxBargainDetailService;

    @At("")
	@Ok("beetl:/platform/wx/bargain/detail/index.html")
    @RequiresPermissions("platform.wx.bargain.detail")
	public void index() {

	}

	@At("/data")
    @Ok("json")
    @RequiresPermissions("platform.wx.bargain.detail")
    public Object data(@Param("length") int length, @Param("start") int start, @Param("draw") int draw, @Param("::order") List<DataTableOrder> order, @Param("::columns") List<DataTableColumn> columns) {
		Cnd cnd = Cnd.NEW();
    	return wxBargainDetailService.data(length, start, draw, order, columns, cnd, null);
    }

    @At("/add")
    @Ok("beetl:/platform/wx/bargain/detail/add.html")
    @RequiresPermissions("platform.wx.bargain.detail")
    public void add() {

    }

    @At("/addDo")
    @Ok("json")
    @RequiresPermissions("platform.wx.bargain.detail.add")
    @SLog(tag = "Wx_bargain_detail", msg = "${args[0].id}")
    public Object addDo(@Param("..")Wx_bargain_detail wxBargainDetail, HttpServletRequest req) {
		try {
			wxBargainDetailService.insert(wxBargainDetail);
			return Result.success("system.success");
		} catch (Exception e) {
			return Result.error("system.error");
		}
    }

    @At("/edit/?")
    @Ok("beetl:/platform/wx/bargain/detail/edit.html")
    @RequiresPermissions("platform.wx.bargain.detail")
    public void edit(String id,HttpServletRequest req) {
		req.setAttribute("obj", wxBargainDetailService.fetch(id));
    }

    @At("/editDo")
    @Ok("json")
    @RequiresPermissions("platform.wx.bargain.detail.edit")
    @SLog(tag = "Wx_bargain_detail", msg = "${args[0].id}")
    public Object editDo(@Param("..")Wx_bargain_detail wxBargainDetail, HttpServletRequest req) {
		try {
            wxBargainDetail.setOpBy(StringUtil.getUid());
			wxBargainDetail.setOpAt((int) (System.currentTimeMillis() / 1000));
			wxBargainDetailService.updateIgnoreNull(wxBargainDetail);
			return Result.success("system.success");
		} catch (Exception e) {
			return Result.error("system.error");
		}
    }

    @At({"/delete/?", "/delete"})
    @Ok("json")
    @RequiresPermissions("platform.wx.bargain.detail.delete")
    @SLog(tag = "Wx_bargain_detail", msg = "${req.getAttribute('id')}")
    public Object delete(String id, @Param("ids")  String[] ids, HttpServletRequest req) {
		try {
			if(ids!=null&&ids.length>0){
				wxBargainDetailService.delete(ids);
    			req.setAttribute("id", org.apache.shiro.util.StringUtils.toString(ids));
			}else{
				wxBargainDetailService.delete(id);
    			req.setAttribute("id", id);
			}
            return Result.success("system.success");
        } catch (Exception e) {
            return Result.error("system.error");
        }
    }

    @At("/detail/?")
    @Ok("beetl:/platform/wx/bargain/detail/detail.html")
    @RequiresPermissions("platform.wx.bargain.detail")
	public void detail(String id, HttpServletRequest req) {
		if (!Strings.isBlank(id)) {
            req.setAttribute("obj", wxBargainDetailService.fetch(id));
		}else{
            req.setAttribute("obj", null);
        }
    }

}
