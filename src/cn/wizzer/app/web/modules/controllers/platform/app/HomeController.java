package cn.wizzer.app.web.modules.controllers.platform.app;

import org.nutz.integration.jedis.RedisService;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Ok;

import cn.wizzer.app.cms.modules.services.CmsArticleService;
import cn.wizzer.app.cms.modules.services.CmsChannelService;
import cn.wizzer.app.cms.modules.services.CmsLinkClassService;
import cn.wizzer.app.cms.modules.services.CmsLinkService;
import cn.wizzer.app.sys.modules.services.SysApiService;
import cn.wizzer.app.sys.modules.services.SysDictService;
import cn.wizzer.app.sys.modules.services.SysUnitService;

/**
 * Created by Administrator on 2017/6/24.
 */
@IocBean
@At("/platform/interface/home")
public class HomeController {
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

    @At("home")
    @Ok("beetl:/index.html")
    public void home() {

    }
}
