package com.ganhuo.service.client;

import com.ganhuo.model.domain.Article;
import com.ganhuo.model.domain.ArticleDesc;

import java.util.List;

/**
 * Created by sunzhiqiang on 2016/8/26.
 */
public interface ArticleService {
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
    Article getArticleById(Long id);

    /**
     * 获取第一篇文章
     *
     * @return
     */
    Article getFirstArticle();

    /**
     * 通过文章类型 获取对应的文章
     *
     * @param typeId
     * @return
     */
    List<Article> getArticleListByType(Integer typeId);

    /**
     * 获取最新的文章
     *
     * @return
     */
    List<Article> getRecentArticles();

    /**
     * 增加阅读次数
     *
     * @param article
     */
    void updateReadTime(Article article);

    /**
     * 获取最热门的 几篇文章
     *
     * @param i
     * @return
     */
    List<Article> getMostHotArticle(int i);

    /**
     * 通过 module 获取 文章列表
     *
     * @param param
     * @return
     */
    List<Article> getArticleByModule(List<Integer> param);

    /**
     * 获取所有的 文章
     *
     * @return
     */
    List<Article> getAllArticle();

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
    Article getLastArticle();

    /**
     * 获取每个类别的  文章一篇
     *
     * @return
     */
    List<Article> getArticleGroup();

    /**
     * 获取首页 显示文章
     */
    List<ArticleDesc> getIndexArticle();

    /**
     * 保存 爬虫的文章
     *
     * @param article
     */
    void saveSpiderText(Article article);

    /**
     * 获取 爬虫抓取的 文章
     *
     * @param i
     * @return
     */
    List<Article> getSpiderArticle(int i);

    /**
     * 添加文章
     *
     * @param articles
     */
    void insert(List<Article> articles);

    /**
     * 删除 蜘蛛爬取 的文章
     *
     * @param articles
     */
    void deleteSpiderArticle(List<Article> articles);

    /**
     * 获取当前文章的下一篇文章
     *
     * @param articleId
     * @return
     */
    ArticleDesc getNextArticleById(Long articleId);
}
