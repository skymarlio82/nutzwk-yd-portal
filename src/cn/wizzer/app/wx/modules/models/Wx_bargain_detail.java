package cn.wizzer.app.wx.modules.models;

import cn.wizzer.framework.base.model.BaseModel;
import org.nutz.dao.entity.annotation.*;

import java.io.Serializable;

/**
 * Created by hadoop on 2017/6/5.
 */
@Table("wx_bargain_detail")
public class Wx_bargain_detail extends BaseModel implements Serializable {
    private static final long serialVersionUID = 1L;
    @Column
    @Name
    @Comment("ID")
    @ColDefine(type = ColType.VARCHAR, width = 32)
    @Prev(els = {@EL("uuid()")})
    private String id;

    @Column
    @Comment("微信用户表ID")
    @ColDefine(type = ColType.VARCHAR, width = 32)
    private String bargainId;

    @Column
    @Comment("微信用户表ID")
    @ColDefine(type = ColType.VARCHAR, width = 32)
    private String wuserid;

    @Column
    @Comment("朋友帮忙砍的价格")
    @ColDefine(type = ColType.FLOAT, width = 56)
    private Float barginPrice;


    private Float currentPrice;
    private String nickname;
    private String headimgurl;

    public Float getCurrentPrice() {
        return currentPrice;
    }

    public void setCurrentPrice(Float currentPrice) {
        this.currentPrice = currentPrice;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getHeadimgurl() {
        return headimgurl;
    }

    public void setHeadimgurl(String headimgurl) {
        this.headimgurl = headimgurl;
    }

    public String getBargainId() {
        return bargainId;
    }

    public void setBargainId(String bargainId) {
        this.bargainId = bargainId;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getWuserid() {
        return wuserid;
    }

    public void setWuserid(String wuserid) {
        this.wuserid = wuserid;
    }

    public Float getBarginPrice() {
        return barginPrice;
    }

    public void setBarginPrice(Float barginPrice) {
        this.barginPrice = barginPrice;
    }
}
