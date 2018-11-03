package cn.wizzer.app.web.commons.dto;

/**
 * Created by Administrator on 2017/6/24.
 */
public class SysUserDto {
    private String loginname="";
    private String salt;
    private String username="";

    private String email="";

    private String wx_no="";
    private String mobile="";
    private String unit_name="";

    public String getLoginname() {
        return loginname;
    }

    public void setLoginname(String loginname) {
        this.loginname = loginname;
    }

    public String getSalt() {
        return salt;
    }

    public void setSalt(String salt) {
        this.salt = salt;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getWx_no() {
        return wx_no;
    }

    public void setWx_no(String wx_no) {
        this.wx_no = wx_no;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getUnit_name() {
        return unit_name;
    }

    public void setUnit_name(String unit_name) {
        this.unit_name = unit_name;
    }
}
