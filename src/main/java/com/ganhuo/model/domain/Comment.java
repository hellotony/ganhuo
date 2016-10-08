package com.ganhuo.model.domain;

import com.ganhuo.model.annotation.db.Column;
import com.ganhuo.model.annotation.db.Table;
import com.ganhuo.model.domain.base.BaseEntity;

/**
 * Created by sunzhiqiang on 2016/8/26.
 */
@Table(name = "comment",description = "文章评论")
public class Comment extends BaseEntity {

    @Column(name = "article_id",description = "文章ID")
    private Integer articleId;

    @Column(name="username",description = "用户名")
    private String username;

    @Column(name="content",description = "评论内容")
    private String content;

    @Column(name = "del_flag",description = "删除状态，1：已删除，0：未删除")
    private Integer delFlag;

    public Integer getArticleId() {
        return articleId;
    }

    public void setArticleId(Integer articleId) {
        this.articleId = articleId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

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
}
