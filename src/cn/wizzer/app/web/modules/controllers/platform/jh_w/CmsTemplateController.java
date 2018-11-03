package cn.wizzer.app.web.modules.controllers.platform.jh_w;

import cn.wizzer.app.teamplate.modules.models.JZ_Template;
import cn.wizzer.app.teamplate.modules.services.TemplateService;
import cn.wizzer.app.web.commons.slog.annotation.SLog;
import cn.wizzer.framework.base.Result;
import cn.wizzer.framework.page.datatable.DataTableColumn;
import cn.wizzer.framework.page.datatable.DataTableOrder;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.nutz.dao.Cnd;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.log.Log;
import org.nutz.log.Logs;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Ok;
import org.nutz.mvc.annotation.Param;
import sun.net.www.http.HttpClient;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by hadoop on 2017/4/9.
 */
@IocBean
@At("/platform/jh_w/template")
public class CmsTemplateController {

    private static final Log log = Logs.get();


    @At
    @Ok("json")
    @SLog(tag = "添加模板", msg = "模板名称:${args[0].templateName}")
    public Object index() {
//        HttpClient client = new
        return new Object();
    }

}
