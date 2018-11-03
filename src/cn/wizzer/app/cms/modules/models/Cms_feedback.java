package cn.wizzer.app.cms.modules.models;

import org.nutz.dao.entity.annotation.ColDefine;
import org.nutz.dao.entity.annotation.ColType;
import org.nutz.dao.entity.annotation.Column;
import org.nutz.dao.entity.annotation.Comment;
import org.nutz.dao.entity.annotation.EL;
import org.nutz.dao.entity.annotation.Name;
import org.nutz.dao.entity.annotation.Prev;
import org.nutz.dao.entity.annotation.Table;

import java.io.Serializable;

import cn.wizzer.framework.base.model.BaseModel;

/**
 * Created by Administrator on 2017/9/20.
 * 意见反馈表
 */
@Table("cms_feedback")
public class Cms_feedback extends BaseModel implements Serializable{
    private static final long serialVersionUID = 1L;
    @Column
    @Name
    @Comment("ID")
    @ColDefine(type = ColType.VARCHAR, width = 32)
    @Prev(els = {@EL("uuid()")})
    private String id;


    @Column
    @Comment("提交人")
    @ColDefine(type = ColType.VARCHAR, width = 32)
    private  String feedpeople;

    @Column
    @Comment("手机")
    @ColDefine(type = ColType.VARCHAR, width = 1000)
    private  String phone;

    @Column
    @Comment("标题")
    @ColDefine(type = ColType.VARCHAR, width = 1000)
    private  String subject;
    @Column
    @Comment("邮箱")
    @ColDefine(type = ColType.VARCHAR, width = 1000)
    private  String email;

    @Column
    @Comment("反馈内容")
    @ColDefine(type = ColType.VARCHAR, width = 1000)
    private  String content;

    @Column
    @Comment("时间")
    @ColDefine(type = ColType.VARCHAR, width = 32)
    private  String backDate;
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getFeedpeople() {
        return feedpeople;
    }

    public void setFeedpeople(String feedpeople) {
        this.feedpeople = feedpeople;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getBackDate() {
        return backDate;
    }

    public void setBackDate(String backDate) {
        this.backDate = backDate;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
