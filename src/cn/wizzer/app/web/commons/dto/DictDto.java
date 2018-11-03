package cn.wizzer.app.web.commons.dto;

import java.util.List;

/**
 * Created by Administrator on 2017/6/24.
 */
public class DictDto {
    private String id;
    private String name;
    private String parentId;
    private List<DictDto> sys_dicts;
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public String getParentId() {
        return parentId;
    }

    public void setParentId(String parentId) {
        this.parentId = parentId;
    }

    public List<DictDto> getSys_dicts() {
        return sys_dicts;
    }

    public void setSys_dicts(List<DictDto> sys_dicts) {
        this.sys_dicts = sys_dicts;
    }

    public void setName(String name) {
        this.name = name;
    }
}