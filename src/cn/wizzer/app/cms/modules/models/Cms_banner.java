package cn.wizzer.app.cms.modules.models;

import cn.wizzer.framework.base.model.BaseModel;
import org.nutz.dao.entity.annotation.*;

import java.io.Serializable;

/**
 * Created by Administrator on 2017/9/2.
 */
@Table("cms_banner")
public class Cms_banner extends BaseModel implements Serializable {
    private static final long serialVersionUID = 1L;
    @Column
    @Name
    @Comment("ID")
    @ColDefine(type = ColType.VARCHAR, width = 32)
    @Prev(els = {@EL("uuid()")})
    private String id;

    @Column
    @Comment("标题")
    @ColDefine(type = ColType.VARCHAR, width = 120)
    private  String title;

    @Column
    @Comment("内容")
    @ColDefine(type = ColType.VARCHAR, width = 1000)
    private  String content;

    @Column
    @Comment("图片地址")
    @ColDefine(type = ColType.VARCHAR, width = 255)
    private  String imgurl;

    @Column
    @Comment("是否显示")
    @ColDefine(type = ColType.BOOLEAN, width =10)
    private  int  isFlag;


    @Column
    @Comment("类型")
    @ColDefine(type = ColType.VARCHAR, width = 255)
    private  String type;

    @Column
    @Comment("跳转地址")
    @ColDefine(type = ColType.VARCHAR, width = 255)
    private  String jumpurl;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getImgurl() {
        return imgurl;
    }

    public void setImgurl(String imgurl) {
        this.imgurl = imgurl;
    }

    public int getIsFlag() {
        return isFlag;
    }

    public void setIsFlag(int isFlag) {
        this.isFlag = isFlag;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getJumpurl() {
        return jumpurl;
    }

    public void setJumpurl(String jumpurl) {
        this.jumpurl = jumpurl;
    }
}
