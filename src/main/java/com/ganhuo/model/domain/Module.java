package com.ganhuo.model.domain;

import com.ganhuo.model.annotation.db.Column;
import com.ganhuo.model.annotation.db.Table;
import com.ganhuo.model.domain.base.BaseEntity;

import java.util.List;

/**
 * Created by sunzhiqiang on 2016/8/26.
 */
@Table(name = "module",description = "模块")
public class Module extends BaseEntity {

    @Column(name = "name",description = "模块名字")
    private String name;


    @Column(name="value",description = "模块对应值")
    private String value;

    @Column(name="count",description = "模块文章数量")
    private int count;


    @Column(name = "del_flag",description = "删除状态，1：已删除，0：未删除")
    private Integer delFlag;


    private Article article;


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public Integer getDelFlag() {
        return delFlag;
    }

    public void setDelFlag(Integer delFlag) {
        this.delFlag = delFlag;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public Article getArticle() {
        return article;
    }

    public void setArticle(Article article) {
        this.article = article;
    }
}
