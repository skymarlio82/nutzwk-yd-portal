package cn.wizzer.app.cms.modules.services.impl;

import org.nutz.dao.Dao;
import org.nutz.ioc.loader.annotation.IocBean;

import cn.wizzer.app.cms.modules.models.Cms_link_class;
import cn.wizzer.app.cms.modules.services.CmsLinkClassService;
import cn.wizzer.framework.base.service.BaseServiceImpl;

@IocBean(args = {"refer:dao"})
public class CmsLinkClassServiceImpl extends BaseServiceImpl<Cms_link_class> implements CmsLinkClassService {
    public CmsLinkClassServiceImpl(Dao dao) {
        super(dao);
    }
}
