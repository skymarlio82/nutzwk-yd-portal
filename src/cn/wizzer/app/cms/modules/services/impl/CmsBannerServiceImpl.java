package cn.wizzer.app.cms.modules.services.impl;

import cn.wizzer.framework.base.service.BaseServiceImpl;
import cn.wizzer.app.cms.modules.models.Cms_banner;
import cn.wizzer.app.cms.modules.services.CmsBannerService;
import org.nutz.dao.Dao;
import org.nutz.ioc.loader.annotation.IocBean;

@IocBean(args = {"refer:dao"})
public class CmsBannerServiceImpl extends BaseServiceImpl<Cms_banner> implements CmsBannerService {
    public CmsBannerServiceImpl(Dao dao) {
        super(dao);
    }
}
