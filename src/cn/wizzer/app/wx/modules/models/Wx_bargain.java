package cn.wizzer.app.wx.modules.models;

import cn.wizzer.framework.base.model.BaseModel;
import org.nutz.dao.entity.annotation.*;

import java.io.Serializable;
import java.math.BigDecimal;

/**
 * Created by hadoop on 2017/6/5.
 */
@Table("wx_bargain")
public class Wx_bargain extends BaseModel implements Serializable {
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
    private String wuserid;
    @Column
    @Comment("用户姓名")
    @ColDefine(type = ColType.VARCHAR, width = 255)
    private String name;
    @Column
    @Comment("用户电话号码")
    @ColDefine(type = ColType.VARCHAR, width = 255)
    private String phone;

    @Column
    @Comment("价格")
    @ColDefine(type = ColType.FLOAT, width = 65)
    private Float price;
    @Column
    @Comment("创建时间")
    @ColDefine(type = ColType.INT)
    private Integer createTime;
    @Column
    @Comment("修改时间")
    @ColDefine(type = ColType.INT)
    private Integer updateTime;

    @Column
    @Comment("是否消费 1 就是已消费 其他为未消费")
    @ColDefine(type = ColType.INT)
    private Integer signIn;

    private String nickname;
    private String headimgurl;

    public Integer getSignIn() {
        return signIn;
    }
    public void setSignIn(Integer signIn) {
        this.signIn = signIn;
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

    public Float getPrice() {
        return price;
    }

    public void setPrice(Float price) {
        this.price = price;
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

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Integer getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Integer createTime) {
        this.createTime = createTime;
    }

    public Integer getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Integer updateTime) {
        this.updateTime = updateTime;
    }
}
