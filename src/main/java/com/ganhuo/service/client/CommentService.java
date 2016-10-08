package com.ganhuo.service.client;

import com.ganhuo.model.domain.Comment;

import java.util.List;

/**
 * Created by sunzhiqiang on 2016/8/26.
 */
public interface CommentService {
    /**
     * 插入文章
     * @param content
     * @param topicImageUrl
     *@param  @return
     */
    Integer add(String content, String title, int type, String topicImageUrl, String commentDesc);

    /**
     * 通过 id 获取文章
     * @param id
     * @return
     */
    Comment getCommentById(Long id);

    /**
     * 获取第一篇文章
     * @return
     */
    Comment getFirstComment();

    /**
     * 通过文章类型 获取对应的文章
     * @param typeId
     * @return
     */
    List<Comment> getCommentListByType(Integer typeId);

    /**
     * 获取最新的文章
     * @return
     */
    List<Comment> getRecentComments();

    /**
     * 增加阅读次数
     * @param Comment
     */
    void updateReadTime(Comment Comment);

    /**
     * 获取最热门的 几篇文章
     * @param i
     * @return
     */
    List<Comment> getMostHotComment(int i);

    /**
     * 通过 module 获取 文章列表
     * @param param
     * @return
     */
    List<Comment> getCommentByModule(List<Integer> param);

    /**
     * 获取所有的 文章
     * @return
     */
    List<Comment> getAllComment();

    /**
     * 更新文章
     *
     * @param id
     * @param content
     * @param title
     * @param topicImageUrl
     * @param
     * @return
     */
    Integer update(Integer id, String content, String title, String topicImageUrl, String commentDesc);


    /**
     * 插入一条 评论
     * @param articleId
     * @param username
     * @param content
     * @return
     */
    Integer insert(Integer articleId, String username, String content);


    /**
     * 通过 文章id 获取评论
     * @param articleId
     * @return
     */
    List<Comment> getCommentsByArticleId(Long articleId);
}
