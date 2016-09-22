package com.ganhuo.model.domain;

import com.ganhuo.model.annotation.db.Column;
import com.ganhuo.model.annotation.db.Table;
import com.ganhuo.model.domain.base.BaseEntity;

/**
 * Created by sunzhiqiang on 2016/8/26.
 */
@Table(name = "article",description = "存储对应的文章")
public class Article extends BaseEntity {

    @Column(name = "title",description = "文章标题")
    private String title;

    @Column(name="description",description = "文章简介")
    private String description;

    @Column(name = "type",description = "文章类型")
    private Integer type;

    @Column(name = "content",description = "文章内容")
    private String content;

    @Column(name = "read_times",description = "阅读次数")
    private int readTimes;

    @Column(name = "commend",description = "评论次数")
    private int commend;

    @Column(name = "del_flag",description = "删除状态，1：已删除，0：未删除")
    private Integer delFlag;

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Integer getDelFlag() {
        return delFlag;
    }

    public void setDelFlag(Integer delFlag) {
        this.delFlag = delFlag;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public int getReadTimes() {
        return readTimes;
    }

    public void setReadTimes(int readTimes) {
        this.readTimes = readTimes;
    }

    public int getCommend() {
        return commend;
    }

    public void setCommend(int commend) {
        this.commend = commend;
    }
}
