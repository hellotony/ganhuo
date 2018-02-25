package com.ganhuo.service;

import com.ganhuo.mapper.ArticleDescMapper;
import com.ganhuo.mapper.ArticleMapper;
import com.ganhuo.model.domain.Article;
import com.ganhuo.model.domain.ArticleDesc;
import com.ganhuo.service.client.ArticleService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.annotation.Resource;

/**
 * Created by sunzhiqiang on 2016/8/26.
 */
@Service("articleService")
public class ArticleServiceImpl implements ArticleService {

    @Resource
    private ArticleMapper articleMapper;

    @Resource
    private ArticleDescMapper articleDescMapper;

    @Override
    public Integer add(String content, String title, int type, String topicImageUrl, String articleDesc) {
        if (StringUtils.isBlank(content) || StringUtils.isBlank(title)) {
            return 0;
        }
        Article article = new Article();
        article.setTitle(title);
        article.setType(type);
        article.setDescription(articleDesc);
        article.setImgUrl(topicImageUrl);
        article.setContent(content);
        article.setReadTimes(0);
        article.setCommend(0);
        article.setDelFlag(0);
        article.setAddTime(new Date());
        article.setUpdateTime(new Date());
        articleMapper.insert(article);

        ArticleDesc ar = new ArticleDesc();
        ar.setReadTimes(0);
        ar.setDelFlag(0);
        ar.setAddTime(new Date());
        ar.setUpdateTime(new Date());
        ar.setCommend(0);
        ar.setDescription(articleDesc);
        ar.setImgUrl(topicImageUrl);
        ar.setTitle(title);
        ar.setType(type);
        articleDescMapper.insert(ar);

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

    @Override
    public List<Article> getArticleByModule(List<Integer> param) {

        return articleMapper.getArticleByModule(param);
    }

    @Override
    public List<Article> getAllArticle() {
        return articleMapper.getAllArticle();
    }

    @Override
    public Integer update(Integer id, String content, String title, String topicImageUrl, String articleDesc) {
        Article a = new Article();
        a.setId(id);
        a.setTitle(title);
        a.setContent(content);
        a.setImgUrl(topicImageUrl);
        a.setDescription(articleDesc);
        articleMapper.updateArticle(a);

        ArticleDesc ar = new ArticleDesc();
        ar.setId(id);
        ar.setTitle(title);
        ar.setImgUrl(topicImageUrl);
        ar.setDescription(articleDesc);
        articleDescMapper.updateArticle(ar);
        return 1;
    }

    @Override
    public void updateCommentTimes(Integer articleId) {
        articleMapper.updateCommentNum(articleId);

    }

    @Override
    public Article getLastArticle() {
        return articleMapper.getLastArticle();
    }

    @Override
    public List<Article> getArticleGroup() {
        return articleMapper.getArticleGroup();
    }

    @Override
    public List<ArticleDesc> getIndexArticle() {
        return articleDescMapper.getIndexArticle();
    }

    @Override
    public void saveSpiderText(Article article) {
        articleMapper.saveSpiderText(article);
    }

    @Override
    public List<Article> getSpiderArticle(int i) {
        return articleMapper.getSpiderArticle(i);
    }

    @Override
    public void insert(List<Article> articles) {
        for (Article ar : articles) {
            ar.setType(4);
            articleMapper.insert(ar);
            ArticleDesc a = new ArticleDesc();
            a.setReadTimes(0);
            a.setDelFlag(0);
            a.setAddTime(new Date());
            a.setUpdateTime(new Date());
            a.setCommend(0);
            a.setDescription(ar.getDescription());
            a.setImgUrl(ar.getImgUrl());
            a.setTitle(ar.getTitle());
            a.setType(ar.getType());
            articleDescMapper.insert(a);
        }
    }

    @Override
    public void deleteSpiderArticle(List<Article> articles) {
        List<Integer> ids = new ArrayList<>();
        for (Article ar : articles) {
            ids.add(ar.getId());
        }
        articleMapper.deleteSpiderArticle(ids);
    }

    @Override
    public ArticleDesc getNextArticleById(Long articleId) {
        return articleDescMapper.getNextArticleById(articleId);
    }

}
