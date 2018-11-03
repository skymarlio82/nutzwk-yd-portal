package cn.wizzer.app.wx.modules.models;

import cn.wizzer.framework.base.model.BaseModel;
import org.nutz.dao.entity.annotation.*;

import java.io.Serializable;

/**
 * Created by hadoop on 2017/6/5.
 */
@Table("wx_bargain_config")
public class Wx_bargain_config extends BaseModel implements Serializable {
    @Column
    @Name
    @Comment("ID")
    @ColDefine(type = ColType.VARCHAR, width = 32)
    @Prev(els = {@EL("uuid()")})
    private String id;
    @Column
    @Comment("活动名称")
    @ColDefine(type = ColType.VARCHAR, width = 32)
    private String bargainName;
    @Column
    @Comment("原始价格")
    @ColDefine(type = ColType.VARCHAR, width = 32)
    private Float maxPrice;

    @Column
    @Comment("最低价格")
    @ColDefine(type = ColType.VARCHAR, width = 32)
    private Float minPrice;
    @Column
    @Comment("结束时间")
    @ColDefine(type = ColType.INT)
    private Integer endTime;

    public Integer getEndTime() {
        return endTime;
    }

    public void setEndTime(Integer endTime) {
        this.endTime = endTime;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getBargainName() {
        return bargainName;
    }

    public void setBargainName(String bargainName) {
        this.bargainName = bargainName;
    }

    public Float getMaxPrice() {
        return maxPrice;
    }

    public void setMaxPrice(Float maxPrice) {
        this.maxPrice = maxPrice;
    }

    public Float getMinPrice() {
        return minPrice;
    }

    public void setMinPrice(Float minPrice) {
        this.minPrice = minPrice;
    }
}
