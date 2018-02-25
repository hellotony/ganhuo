package com.ganhuo.service.client;

import com.ganhuo.model.domain.ArticleDesc;

import java.util.List;

/**
 * Created by sunzhiqiang on 2016/8/26.
 */
public interface ArticleDescService {
    /**
     * 插入文章
     *
     * @param content
     * @param topicImageUrl
     * @param articleDesc   @return
     */
    Integer add(String content, String title, int type, String topicImageUrl, String articleDesc);

    /**
     * 通过 id 获取文章
     *
     * @param id
     * @return
     */
    ArticleDesc getArticleById(Long id);

    /**
     * 获取第一篇文章
     *
     * @return
     */
    ArticleDesc getFirstArticle();

    /**
     * 通过文章类型 获取对应的文章
     *
     * @param typeId
     * @return
     */
    List<ArticleDesc> getArticleListByType(Integer typeId);

    /**
     * 获取最新的文章
     *
     * @return
     */
    List<ArticleDesc> getRecentArticles();

    /**
     * 增加阅读次数
     *
     * @param article
     */
    void updateReadTime(ArticleDesc article);

    /**
     * 获取最热门的 几篇文章
     *
     * @param i
     * @return
     */
    List<ArticleDesc> getMostHotArticle(int i);

    /**
     * 通过 module 获取 文章列表
     *
     * @param param
     * @return
     */
    List<ArticleDesc> getArticleByModule(List<Integer> param);

    /**
     * 获取所有的 文章
     *
     * @return
     */
    List<ArticleDesc> getAllArticle();

    /**
     * 更新文章
     *
     * @param id
     * @param content
     * @param title
     * @param topicImageUrl
     * @param articleDesc
     * @return
     */
    Integer update(Integer id, String content, String title, String topicImageUrl, String articleDesc);

    /**
     * 评论数量+1
     *
     * @param articleId
     */
    void updateCommentTimes(Integer articleId);

    /**
     * 获取最新创建的文章
     *
     * @return
     */
    ArticleDesc getLastArticle();

    /**
     * 获取每个类别的  文章一篇
     *
     * @return
     */
    List<ArticleDesc> getArticleGroup();

    /**
     * 获取首页 显示文章
     */
    List<ArticleDesc> getIndexArticle();

    /**
     * 获取最新的几篇文章
     *
     * @return
     */
    List<ArticleDesc> getLastArticles(int count);

    /**
     * 报错 爬虫的内容
     *
     * @param articleDescs
     */
    void addSpiderDesc(List<ArticleDesc> articleDescs);

    /**
     * 爬虫获取文章链接
     *
     * @return
     */
    List<ArticleDesc> getSpirderUrl();

    /**
     * 获取 友情连接
     *
     * @return
     */
    List<ArticleDesc> getLinks();
}
