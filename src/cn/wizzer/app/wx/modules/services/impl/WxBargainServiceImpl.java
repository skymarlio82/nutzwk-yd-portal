package cn.wizzer.app.wx.modules.services.impl;

import cn.wizzer.framework.base.service.BaseServiceImpl;
import cn.wizzer.app.wx.modules.models.Wx_bargain;
import cn.wizzer.app.wx.modules.services.WxBargainService;
import org.nutz.dao.Dao;
import org.nutz.ioc.loader.annotation.IocBean;

@IocBean(args = {"refer:dao"})
public class WxBargainServiceImpl extends BaseServiceImpl<Wx_bargain> implements WxBargainService {
    public WxBargainServiceImpl(Dao dao) {
        super(dao);
    }
}
