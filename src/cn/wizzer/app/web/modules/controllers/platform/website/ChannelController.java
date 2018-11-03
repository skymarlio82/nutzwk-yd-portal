package cn.wizzer.app.web.modules.controllers.platform.website;

import cn.wizzer.app.cms.modules.models.Cms_channel;
import cn.wizzer.app.cms.modules.services.CmsChannelService;
import cn.wizzer.framework.base.Result;
import org.nutz.dao.Cnd;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Ok;
import org.nutz.mvc.annotation.Param;

import java.util.List;

/**
 * Created by remon on 2017/9/12.
 */
@IocBean
@At("/channel")
public class ChannelController {
    @Inject
    private CmsChannelService cmsChannelService;
    @At("/get")
    @Ok("json")
    public Object childChannel(@Param("type") String type, @Param("id") String id){

        if("child".equals(type)){
            List<Cms_channel> channels = cmsChannelService.query(Cnd.NEW().and("parentId","=",id).desc("location"));
            return Result.success("system.success",channels);
        }else if("desc".equals(type)){
            Cms_channel channel = cmsChannelService.fetch(id);
            return Result.success("system.success",channel);
        }
        return Result.error("system.error");

    }

}
