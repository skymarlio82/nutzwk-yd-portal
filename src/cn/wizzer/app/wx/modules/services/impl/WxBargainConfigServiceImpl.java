package cn.wizzer.app.wx.modules.services.impl;

import cn.wizzer.framework.base.service.BaseServiceImpl;
import cn.wizzer.app.wx.modules.models.Wx_bargain_config;
import cn.wizzer.app.wx.modules.services.WxBargainConfigService;
import org.nutz.dao.Dao;
import org.nutz.ioc.loader.annotation.IocBean;

@IocBean(args = {"refer:dao"})
public class WxBargainConfigServiceImpl extends BaseServiceImpl<Wx_bargain_config> implements WxBargainConfigService {
    public WxBargainConfigServiceImpl(Dao dao) {
        super(dao);
    }
}
