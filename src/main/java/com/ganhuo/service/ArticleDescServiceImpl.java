package com.ganhuo.service;

import com.ganhuo.mapper.ArticleDescMapper;
import com.ganhuo.model.domain.Article;
import com.ganhuo.model.domain.ArticleDesc;
import com.ganhuo.service.client.ArticleDescService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

/**
 * Created by sunzhiqiang on 2016/8/26.
 */
@Service("articleDescService")
public class ArticleDescServiceImpl implements ArticleDescService {

    @Resource
    private ArticleDescMapper articleDescMapper;


    @Override
    public Integer add(String content, String title, int type, String topicImageUrl, String articleDesc) {
        if(StringUtils.isBlank(content) || StringUtils.isBlank(title)){
            return 0;
        }
        ArticleDesc article = new ArticleDesc();
        article.setTitle(title);
        article.setType(type);
        article.setDescription(articleDesc);
        article.setImgUrl(topicImageUrl);
        article.setReadTimes(12);
        article.setCommend(2);
        article.setDelFlag(0);
        article.setAddTime(new Date());
        article.setUpdateTime(new Date());
        articleDescMapper.insert(article);
        return article.getId();
    }

    @Override
    public ArticleDesc getArticleById(Long id) {
        return articleDescMapper.getArticleById(id);
    }

    @Override
    public ArticleDesc getFirstArticle() {
        return articleDescMapper.getFirstArticle();
    }

    @Override
    public List<ArticleDesc> getArticleListByType(Integer typeId) {
        List<ArticleDesc> articles = articleDescMapper.getArticleListByType(typeId);
        return articles;
    }

    @Override
    public List<ArticleDesc> getRecentArticles() {
        return articleDescMapper.getRecentArticles();
    }

    @Override
    public void updateReadTime(ArticleDesc article) {
        articleDescMapper.updateArticle(article);
    }

    @Override
    public List<ArticleDesc> getMostHotArticle(int i) {
        return articleDescMapper.getMostHotArticle(i);
    }

    @Override
    public List<ArticleDesc> getArticleByModule(List<Integer> param) {

        return articleDescMapper.getArticleByModule(param);
    }

    @Override
    public List<ArticleDesc> getAllArticle() {
        return articleDescMapper.getAllArticle();
    }

    @Override
    public Integer update(Integer id, String content, String title, String topicImageUrl, String articleDesc) {
        ArticleDesc a = new ArticleDesc();
        a.setId(id);
        a.setTitle(title);
        a.setImgUrl(topicImageUrl);
        a.setDescription(articleDesc);
        articleDescMapper.updateArticle(a);
        return 1;
    }

    @Override
    public void updateCommentTimes(Integer articleId) {
        articleDescMapper.updateCommentNum(articleId);

    }

    @Override
    public ArticleDesc getLastArticle() {
        return articleDescMapper.getLastArticle();
    }

    @Override
    public List<ArticleDesc> getArticleGroup() {
        return articleDescMapper.getArticleGroup();
    }

    @Override
    public List<ArticleDesc> getIndexArticle() {
        return articleDescMapper.getIndexArticle();
    }

    @Override
    public List<ArticleDesc> getLastArticles(int count) {
        return articleDescMapper.getLastArticles(count);
    }

    @Override
    public void addSpiderDesc(List<ArticleDesc> articleDescs) {
        articleDescMapper.batchInsertSpider(articleDescs);
    }

    @Override
    public List<ArticleDesc> getSpirderUrl() {

        return articleDescMapper.getSpiderUrl();
    }

    @Override
    public List<ArticleDesc> getLinks() {
        return articleDescMapper.getLinks();
    }


}
