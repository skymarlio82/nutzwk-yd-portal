package cn.wizzer.app.cms.modules.services.impl;

import org.apache.commons.lang.StringUtils;
import org.nutz.aop.interceptor.ioc.TransAop;
import org.nutz.dao.Chain;
import org.nutz.dao.Cnd;
import org.nutz.dao.Dao;
import org.nutz.dao.Sqls;
import org.nutz.ioc.aop.Aop;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.lang.Strings;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import cn.wizzer.app.cms.modules.models.Cms_channel;
import cn.wizzer.app.cms.modules.services.CmsChannelService;
import cn.wizzer.app.web.commons.dto.DictDto;
import cn.wizzer.framework.base.service.BaseServiceImpl;
import cn.wizzer.framework.page.Pagination;

@IocBean(args = {"refer:dao"})
public class CmsChannelServiceImpl extends BaseServiceImpl<Cms_channel> implements CmsChannelService {
    public CmsChannelServiceImpl(Dao dao) {
        super(dao);
    }

    /**
     * 新增菜单
     *
     * @param channel
     * @param pid
     */
    @Aop(TransAop.READ_COMMITTED)
    public void save(Cms_channel channel, String pid) {
        String path = "";
        if (!Strings.isEmpty(pid)) {
            Cms_channel pp = this.fetch(pid);
            path = pp.getPath();
        } else pid = "";
        channel.setPath(getSubPath("cms_channel", "path", path));
        channel.setParentId(pid);
        dao().insert(channel);
        if (!Strings.isEmpty(pid)) {
            this.update(Chain.make("hasChildren", true), Cnd.where("id", "=", pid));
        }
    }

    /**
     * 级联删除菜单
     *
     * @param channel
     */
    @Aop(TransAop.READ_COMMITTED)
    public void deleteAndChild(Cms_channel channel) {
        dao().execute(Sqls.create("delete from cms_channel where path like @path").setParam("path", channel.getPath() + "%"));
        dao().execute(Sqls.create("delete from cms_article where channelId=@id or channelId in(SELECT id FROM cms_channel WHERE path like @path)").setParam("id", channel.getId()).setParam("path", channel.getPath() + "%"));
        if (!Strings.isEmpty(channel.getParentId())) {
            int count = count(Cnd.where("parentId", "=", channel.getParentId()));
            if (count < 1) {
                dao().execute(Sqls.create("update cms_channel set hasChildren=0 where id=@pid").setParam("pid", channel.getParentId()));
            }
        }
    }

    public List<Cms_channel> getParentChannel() {
        return this.query(Cnd.where("parentId","=",""));
    }

    public List<Cms_channel> getSonChannel(String channel_id) {
        return this.query(Cnd.where("parentId","=",channel_id));
    }

    public Pagination getChildren(Integer pageNumber, int pageSize,String parentId) {
        Pagination page = this.listPage(pageNumber,pageSize,Cnd.where("parentId","=",parentId));
        return page;
    }



    public Map<String,Object> getJsonTree(String channel_id) {
        List<Cms_channel> dicts = null;
        if(StringUtils.isNotEmpty(channel_id)){
            dicts = this.getSonChannel(channel_id);
        }else{
            dicts = this.getParentChannel();
        }

        Map<String,Object> a_dicts  = new HashMap<String,Object>();
        List<Cms_channel> all_dicts = this.query();
        for (int i = 0; i < dicts.size(); i++) {
            Cms_channel dict = dicts.get(i);
            List<DictDto> dto = getChildrenTree(dicts, a_dicts, all_dicts, dict);
            a_dicts.put(dict.getName()+"_"+dict.getId(),dto);
        }
        return a_dicts;
    }

    private List<DictDto> getChildrenTree(List<Cms_channel> dicts, Map<String, Object> a_dicts, List<Cms_channel> all_dicts, Cms_channel dict) {
        List<DictDto> sys_dicts = new ArrayList<DictDto>();
        for (int j = 0; j < all_dicts.size(); j++) {
            Cms_channel dt = all_dicts.get(j);
            if(dt.getParentId().equals(dict.getId())){
                DictDto dto = new DictDto();
                dto.setId(dt.getId());
                dto.setName(dt.getName());
                List<DictDto> children_dicts =getChildrenTree(dicts,a_dicts,all_dicts,dt);
                dto.setSys_dicts(children_dicts);
                sys_dicts.add(dto);
            }
        }
        return sys_dicts;
    }
}
