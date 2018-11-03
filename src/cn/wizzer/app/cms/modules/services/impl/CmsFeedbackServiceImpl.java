package cn.wizzer.app.cms.modules.services.impl;

import cn.wizzer.framework.base.service.BaseServiceImpl;
import cn.wizzer.app.cms.modules.models.Cms_feedback;
import cn.wizzer.app.cms.modules.services.CmsFeedbackService;
import org.nutz.dao.Dao;
import org.nutz.ioc.loader.annotation.IocBean;

@IocBean(args = {"refer:dao"})
public class CmsFeedbackServiceImpl extends BaseServiceImpl<Cms_feedback> implements CmsFeedbackService {
    public CmsFeedbackServiceImpl(Dao dao) {
        super(dao);
    }
}
