package cn.wizzer.app.teamplate.modules.services.impl;

import cn.wizzer.framework.base.service.BaseServiceImpl;
import cn.wizzer.app.teamplate.modules.models.JZ_Template;
import cn.wizzer.app.teamplate.modules.services.JzTemplateService;
import org.nutz.dao.Dao;
import org.nutz.ioc.loader.annotation.IocBean;

@IocBean(args = {"refer:dao"})
public class JzTemplateServiceImpl extends BaseServiceImpl<JZ_Template> implements JzTemplateService {
    public JzTemplateServiceImpl(Dao dao) {
        super(dao);
    }
}
