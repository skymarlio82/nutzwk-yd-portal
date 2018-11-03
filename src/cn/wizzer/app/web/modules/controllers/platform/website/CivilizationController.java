package cn.wizzer.app.web.modules.controllers.platform.website;

import cn.wizzer.app.cms.modules.services.CmsBannerService;
import cn.wizzer.app.cms.modules.services.CmsChannelService;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.log.Log;
import org.nutz.log.Logs;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Ok;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by remon on 2017/9/4.
 */
@IocBean
@At("/civilizationOnline")
public class CivilizationController {
    private static final Log log = Logs.get();

    @Inject
    private CmsChannelService cmsChannelService;
    @Inject
    private CmsBannerService cmsBannerService;

    @At("")
    @Ok("beetl:/public/web/fourth.html")
    public void index(HttpServletRequest request){
        request.setAttribute("currentName","文明在线");
    }
}
