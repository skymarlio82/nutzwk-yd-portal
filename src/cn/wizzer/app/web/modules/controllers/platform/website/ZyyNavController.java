package cn.wizzer.app.web.modules.controllers.platform.website;

import cn.wizzer.app.cms.modules.models.Cms_channel;
import cn.wizzer.app.cms.modules.services.CmsChannelService;
import org.apache.commons.lang.StringUtils;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by remon on 2017/9/14.
 */
public class ZyyNavController {

    @Inject
    protected CmsChannelService cmsChannelService;

    protected void initNav(String channelId, HttpServletRequest req){
        List<Cms_channel> channels = new ArrayList<>();
        while(true) {
            Cms_channel ch = cmsChannelService.fetch(channelId);
            channels.add(ch);
            if(StringUtils.isNotEmpty(ch.getParentId())){
                channelId = ch.getParentId();
            }else{
                break;
            }

//            Sql sql = new NutSql(" select * from cms_channel c1 left join cms_channel c2 on c1.id = c2.parentId where c1.id = '" + channelId + "' ");
//            cmsChannelService.list(sql);
        }
        req.setAttribute("channels",channels);
    }
}
