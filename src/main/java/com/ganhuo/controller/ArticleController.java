package com.ganhuo.controller;

import com.ganhuo.model.domain.Article;
import com.ganhuo.model.domain.Module;
import com.ganhuo.service.client.ArticleService;
import com.ganhuo.service.client.ModuleService;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by sunzhiqiang on 2016/8/26.
 */
@RestController
@RequestMapping("/article")
public class ArticleController {

    @Resource
    private ArticleService articleService;

    @Resource
    private ModuleService moduleService;

    @RequestMapping(value = "/add",method = RequestMethod.POST)
    public String add(String content,String title,int type){
        //添加文章
        Integer id = articleService.add(content,title,type);
        //更新模块文章数量
        moduleService.updateModuleCount(type);

        return ""+id;
    }

    @RequestMapping("/{articleId}")
    public ModelAndView get(@PathVariable("articleId") Long articleId,@RequestHeader("Host") String Host){
        ModelAndView m = new ModelAndView();
        List<Module> modules = moduleService.getModuleList();
        List<Article> recentArticles = articleService.getRecentArticles();
        Article article= articleService.getArticleById(articleId);
        article.setReadTimes(article.getReadTimes()+1);
        articleService.updateReadTime(article);
        m.addObject("recentArticles",recentArticles);
        m.addObject("modules",modules);
        m.addObject("article",article);
        m.addObject("host",Host);
        m.setViewName("/article");
        return m;
    }
}
