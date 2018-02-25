package com.ganhuo.model.domain.base;

import com.ganhuo.model.annotation.db.Column;

import java.util.Date;

public class BaseEntity extends Base {

    private static final long serialVersionUID = 8413510716038129599L;

    @Column(name = "id", description = "ID")
    private Integer id;

    /**
     * 创建时间
     */
    @Column(name = "add_time", description = "创建时间")
    private Date addTime;

    /**
     * 上次修改时间
     */
    @Column(name = "update_time", description = "上次修改时间")
    private Date updateTime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getAddTime() {
        return addTime;
    }

    public void setAddTime(Date addTime) {
        this.addTime = addTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }
}
