package cn.wizzer.app.sys.modules.services.impl;

import org.nutz.dao.Dao;
import org.nutz.integration.jedis.JedisAgent;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.lang.Files;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.Key;
import java.util.Date;

import cn.wizzer.app.sys.modules.models.Sys_api;
import cn.wizzer.app.sys.modules.services.SysApiService;
import cn.wizzer.app.web.commons.base.Globals;
import cn.wizzer.framework.base.service.BaseServiceImpl;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import io.jsonwebtoken.impl.crypto.MacProvider;
import redis.clients.jedis.Jedis;

/**
 * Created by wizzer on 2016/12/23.
 */
@IocBean(args = {"refer:dao"})
public class SysApiServiceImpl extends BaseServiceImpl<Sys_api> implements SysApiService {
    public SysApiServiceImpl(Dao dao) {
        super(dao);
    }

    @Inject
    JedisAgent jedisAgent;

    public Jedis getReids(){
        try (Jedis jedis = jedisAgent.getResource()){
            return jedis;
        }finally {
        }
    }


//    @Aop("redis")
//    private Key getKey(String appId) throws IOException, ClassNotFoundException {
//        Key key;
//        byte[] obj = jedis().get(appId.getBytes());
//        if (obj != null) {
//            ObjectInputStream keyIn = new ObjectInputStream(new ByteArrayInputStream(obj));
//            key = (Key) keyIn.readObject();
//            keyIn.close();
//        } else {
//            key = MacProvider.generateKey();
//            ByteArrayOutputStream bao = new ByteArrayOutputStream();
//            ObjectOutputStream oos = new ObjectOutputStream(bao);
//            oos.writeObject(key);
//            obj = bao.toByteArray();
//            jedis().set(appId.getBytes(), obj);
//        }
//        return key;
//    }

    private Key getKey(String appId) throws IOException, ClassNotFoundException {
        Key key;
        File f = new File(Globals.AppRoot + "/WEB-INF/apikey/" + appId + ".key");
        if (Files.isFile(f)) {
            ObjectInputStream keyIn = new ObjectInputStream(new FileInputStream(f));
            key = (Key) keyIn.readObject();
            keyIn.close();
        } else {
            key = MacProvider.generateKey();
            Files.createNewFile(f);
            ObjectOutputStream keyOut = new ObjectOutputStream(new FileOutputStream(f));
            keyOut.writeObject(key);
            keyOut.close();
        }
        return key;
    }

    /**
     * 生成token
     *
     * @param date  失效时间
     * @param appId appId
     * @return
     */
    public String generateToken(Date date, String appId) throws IOException, ClassNotFoundException {
        return Jwts.builder()
                .setSubject(appId)
                .signWith(SignatureAlgorithm.HS512, getKey(appId))
                .setExpiration(date)
                .compact();
    }

    /**
     * 验证token
     *
     * @param appId AppId
     * @param token token
     * @return
     */
    public boolean verifyToken(String appId, String token) {
        try {
            return Jwts.parser().setSigningKey(getKey(appId)).parseClaimsJws(token).getBody().getSubject().equals(appId);
        } catch (Exception e) {
            return false;
        }
    }



    public String getLoginToken(String username,String appId) throws IOException {
        String key = appId + new Date().getTime()+new Date().getTime();
        String nkey = "";
        for (int i = 0; i < key.length(); i++) {
            if(i%2 == 0){
                nkey += key.toCharArray()[i];
            }
        }
        String tk = getReids().get(username);
        if(null == tk){
            getReids().set(username, nkey);
            getReids().set(nkey, appId);
        }else{
            getReids().del(tk);
            getReids().set(username, nkey);
            getReids().set(nkey, appId);
        }
        return nkey;
    }


    public void saveData(String key,String value) throws IOException {
        getReids().set(key, value);
        getReids().expire(key,60*10);
    }

    public String getLoginTokenInfo(String token) throws IOException {
        String appId= getReids().get(token);
        System.out.println(appId);
        return appId;
    }

    public void delLoginTokenInfo(String token) throws IOException {
        getReids().del(token);

    }
}