package cn.wizzer.app.sys.modules.services;

import java.io.IOException;
import java.util.Date;

import cn.wizzer.app.sys.modules.models.Sys_api;
import cn.wizzer.framework.base.service.BaseService;

/**
 * Created by wizzer on 2016/12/23.
 */
public interface SysApiService extends BaseService<Sys_api> {
    String generateToken(Date date, String appId)throws IOException, ClassNotFoundException;
    boolean verifyToken(String appId, String token);

    String getLoginToken(String username,String appId) throws IOException;
    String getLoginTokenInfo(String appId) throws IOException;
    void delLoginTokenInfo(String token) throws IOException;
    void saveData(String key,String value)  throws IOException;
}
