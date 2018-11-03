package cn.wizzer.app.cms.modules.services.impl;

import org.nutz.dao.Dao;
import org.nutz.ioc.loader.annotation.IocBean;

import cn.wizzer.app.cms.modules.models.Cms_link;
import cn.wizzer.app.cms.modules.services.CmsLinkService;
import cn.wizzer.framework.base.service.BaseServiceImpl;

@IocBean(args = {"refer:dao"})
public class CmsLinkServiceImpl extends BaseServiceImpl<Cms_link> implements CmsLinkService {
    public CmsLinkServiceImpl(Dao dao) {
        super(dao);
    }



}
