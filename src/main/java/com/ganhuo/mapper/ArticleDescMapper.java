package com.ganhuo.mapper;

import com.ganhuo.model.domain.ArticleDesc;
import org.springframework.data.repository.query.Param;

import java.util.List;

/**
 * Created by sunzhiqiang on 2016/8/26.
 */
public interface ArticleDescMapper {

    void insert(ArticleDesc ArticleDesc);

    ArticleDesc getArticleById(Long id);

    ArticleDesc getFirstArticle();

    List<ArticleDesc> getArticleListByType(Integer typeId);

    List<ArticleDesc> getRecentArticles();

    void updateArticle(ArticleDesc ArticleDesc);

    List<ArticleDesc> getMostHotArticle(@Param("i") int i);

    List<ArticleDesc> getArticleByModule(List<Integer> param);

    List<ArticleDesc> getAllArticle();

    void updateCommentNum(@Param("id") Integer id);

    ArticleDesc getLastArticle();

    List<ArticleDesc> getArticleGroup();

    List<ArticleDesc> getIndexArticle();

    /**
     * 获取最新的 几篇文章
     *
     * @param count
     * @return
     */
    List<ArticleDesc> getLastArticles(@Param("count") Integer count);

    /**
     * 保存爬虫文章
     *
     * @param articleDescs
     */
    void batchInsertSpider(List<ArticleDesc> articleDescs);

    /**
     * 获取爬虫保存的 链接
     *
     * @return
     */
    List<ArticleDesc> getSpiderUrl();

    /**
     * 获取下一篇文章
     *
     * @param
     * @return
     */
    ArticleDesc getNextArticleById(@Param("id") Long id);

    /**
     * 获取友情连接
     *
     * @return
     */
    List<ArticleDesc> getLinks();
}
