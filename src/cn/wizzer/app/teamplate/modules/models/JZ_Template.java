package cn.wizzer.app.teamplate.modules.models;

import cn.wizzer.framework.base.model.BaseModel;
import org.nutz.dao.entity.annotation.*;

import java.io.Serializable;
import java.util.Date;

/**
 * Created by hadoop on 2017/4/9.
 */
@Table("jz_template")
public class JZ_Template extends BaseModel implements Serializable {

    private static final long serialVersionUID = 1L;
    @Column
    @Name
    @Comment("ID")
    @ColDefine(type = ColType.VARCHAR, width = 32)
    @Prev(els = {@EL("uuid()")})
    private String id;

    @Column
    @Comment("模板名称")
    @ColDefine(type = ColType.VARCHAR, width = 255)
    private String templateName;

    @Column
    @Comment("模板编号")
    @ColDefine(type = ColType.VARCHAR, width = 32)
    private String templateNo;

    @Column
    @Comment("模板内容")
    @ColDefine(type = ColType.TEXT)
    private String templateContent;

    @Column
    @Comment("模板创建时间")
    @ColDefine(type = ColType.INT)
    private Integer createTime;

    @Column
    @Comment("模板创建时间")
    @ColDefine(type = ColType.INT)
    private Integer updateTime;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTemplateName() {
        return templateName;
    }

    public void setTemplateName(String templateName) {
        this.templateName = templateName;
    }

    public String getTemplateNo() {
        return templateNo;
    }

    public void setTemplateNo(String templateNo) {
        this.templateNo = templateNo;
    }

    public String getTemplateContent() {
        return templateContent;
    }

    public void setTemplateContent(String templateContent) {
        this.templateContent = templateContent;
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
