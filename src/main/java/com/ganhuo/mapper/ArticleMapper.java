package com.ganhuo.mapper;

import com.ganhuo.model.domain.Article;
import org.springframework.data.repository.query.Param;

import java.util.List;

/**
 * Created by sunzhiqiang on 2016/8/26.
 */
public interface ArticleMapper {

    void insert(Article article);

    Article getArticleById(Long id);

    Article getFirstArticle();

    List<Article> getArticleListByType(Integer typeId);

    List<Article> getRecentArticles();

    void updateArticle(Article article);

    List<Article> getMostHotArticle(@Param("i") int i);

    List<Article> getArticleByModule(List<Integer> param);

    List<Article> getAllArticle();

    void updateCommentNum(@Param("id") Integer id);

    Article getLastArticle();

    List<Article> getArticleGroup();

    void saveSpiderText(Article article);

    List<Article> getSpiderArticle(@Param("count") int count);

    void deleteSpiderArticle(List<Integer> param);
}
