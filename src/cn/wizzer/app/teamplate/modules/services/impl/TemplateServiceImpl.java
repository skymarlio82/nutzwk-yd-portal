package cn.wizzer.app.teamplate.modules.services.impl;

import cn.wizzer.app.teamplate.modules.models.JZ_Template;
import cn.wizzer.app.teamplate.modules.services.TemplateService;
import cn.wizzer.framework.base.service.BaseServiceImpl;
import org.nutz.dao.Dao;
import org.nutz.ioc.loader.annotation.IocBean;

/**
 * Created by hadoop on 2017/4/9.
 */
@IocBean(args = {"refer:dao"})
public class TemplateServiceImpl extends BaseServiceImpl<JZ_Template> implements TemplateService {

    public TemplateServiceImpl(Dao dao) {
        super(dao);
    }

}
