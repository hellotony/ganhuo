package com.ganhuo.service.client;

import com.ganhuo.model.domain.Article;

import java.util.List;

/**
 * Created by sunzhiqiang on 2016/8/26.
 */
public interface ArticleService {
    /**
     * 插入文章
     * @param content
     * @return
     */
    Integer add(String content,String title,int type);

    /**
     * 通过 id 获取文章
     * @param id
     * @return
     */
    Article getArticleById(Long id);

    /**
     * 获取第一篇文章
     * @return
     */
    Article getFirstArticle();

    /**
     * 通过文章类型 获取对应的文章
     * @param typeId
     * @return
     */
    List<Article> getArticleListByType(Integer typeId);

    /**
     * 获取最新的文章
     * @return
     */
    List<Article> getRecentArticles();

    /**
     * 增加阅读次数
     * @param article
     */
    void updateReadTime(Article article);

    /**
     * 获取最热门的 几篇文章
     * @param i
     * @return
     */
    List<Article> getMostHotArticle(int i);
}
