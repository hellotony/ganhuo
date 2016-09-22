package com.ganhuo.service;

import com.ganhuo.mapper.ArticleMapper;
import com.ganhuo.model.domain.Article;
import com.ganhuo.service.client.ArticleService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

/**
 * Created by sunzhiqiang on 2016/8/26.
 */
@Service("articleService")
public class ArticleServiceImpl implements ArticleService {

    @Resource
    private ArticleMapper articleMapper;


    @Override
    public Integer add(String content,String title,int type) {
        if(StringUtils.isBlank(content) || StringUtils.isBlank(title)){
            return 0;
        }
        Article article = new Article();
        article.setTitle(title);
        article.setType(type);
        article.setDescription("文章简介");
        article.setContent(content);
        article.setReadTimes(12);
        article.setCommend(2);
        article.setDelFlag(0);
        article.setAddTime(new Date());
        article.setUpdateTime(new Date());
        articleMapper.insert(article);
        return article.getId();
    }

    @Override
    public Article getArticleById(Long id) {
        return articleMapper.getArticleById(id);
    }

    @Override
    public Article getFirstArticle() {
        return articleMapper.getFirstArticle();
    }

    @Override
    public List<Article> getArticleListByType(Integer typeId) {
        List<Article> articles = articleMapper.getArticleListByType(typeId);
        return articles;
    }

    @Override
    public List<Article> getRecentArticles() {
        return articleMapper.getRecentArticles();
    }

    @Override
    public void updateReadTime(Article article) {
        articleMapper.updateArticle(article);
    }

    @Override
    public List<Article> getMostHotArticle(int i) {
        return articleMapper.getMostHotArticle(i);
    }


}
