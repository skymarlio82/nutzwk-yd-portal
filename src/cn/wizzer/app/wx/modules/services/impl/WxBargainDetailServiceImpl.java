package cn.wizzer.app.wx.modules.services.impl;

import cn.wizzer.framework.base.service.BaseServiceImpl;
import cn.wizzer.app.wx.modules.models.Wx_bargain_detail;
import cn.wizzer.app.wx.modules.services.WxBargainDetailService;
import org.nutz.dao.Dao;
import org.nutz.ioc.loader.annotation.IocBean;

@IocBean(args = {"refer:dao"})
public class WxBargainDetailServiceImpl extends BaseServiceImpl<Wx_bargain_detail> implements WxBargainDetailService {
    public WxBargainDetailServiceImpl(Dao dao) {
        super(dao);
    }
}
