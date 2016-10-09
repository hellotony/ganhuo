package com.ganhuo.controller;

import com.ganhuo.model.domain.Article;
import com.ganhuo.model.domain.Comment;
import com.ganhuo.model.domain.Module;
import com.ganhuo.service.client.ArticleService;
import com.ganhuo.service.client.CommentService;
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

    @Resource
    private CommentService commentService;

    @RequestMapping(value = "/add",method = RequestMethod.POST)
    public String add(String content,String title,int type,String topicImageUrl,String articleDesc){
        //添加文章
        Integer id = articleService.add(content,title,type,topicImageUrl,articleDesc);
        //更新模块文章数量
        moduleService.updateModuleCount(type);
        return ""+id;
    }

    @RequestMapping(value = "/update",method = RequestMethod.POST)
    public String update(Integer id,String content,String title,String topicImageUrl,String articleDesc){
        //添加文章
        articleService.update(id,content,title,topicImageUrl,articleDesc);
        //更新模块文章数量
//        moduleService.updateModuleCount(type);
        return ""+id;
    }

    @RequestMapping("/{articleId}")
    public ModelAndView get(@PathVariable("articleId") Long articleId,@RequestHeader("Host") String Host){
        ModelAndView m = new ModelAndView();
        List<Module> modules = moduleService.getModuleList();
        List<Article> recentArticles = articleService.getRecentArticles();
        List<Comment> comments = commentService.getCommentsByArticleId(articleId);
        Article article= articleService.getArticleById(articleId);
        article.setReadTimes(article.getReadTimes()+1);
        articleService.updateReadTime(article);
        m.addObject("recentArticles",recentArticles);
        m.addObject("modules",modules);
        m.addObject("article",article);
        m.addObject("comments",comments);
        m.addObject("host",Host);
        m.setViewName("/article");
        return m;
    }


    @RequestMapping("/edit/{articleId}")
    public ModelAndView edit(@PathVariable("articleId") Long articleId,@RequestHeader("Host") String Host){
        ModelAndView modelAndView = new ModelAndView();
        Article article = articleService.getArticleById(articleId);
        Module module = moduleService.getModuleById(article.getType());
        List<Article> recentArticles = articleService.getRecentArticles();
        List<Module> modules = moduleService.getModuleList();
        modelAndView.addObject("recentArticles",recentArticles);
        modelAndView.addObject("modules",modules);
        modelAndView.addObject("module",module);
        modelAndView.addObject("article",article);
        modelAndView.addObject("host",Host);
        modelAndView.setViewName("/editArticle");
        return modelAndView;
    }

    @RequestMapping("/edit/show/{articleId}")
    public ModelAndView editShow(@PathVariable("articleId") Long articleId,@RequestHeader("Host") String Host){
        ModelAndView modelAndView = new ModelAndView();
        Article article = articleService.getArticleById(articleId);
        Module module = moduleService.getModuleById(article.getType());
        List<Article> recentArticles = articleService.getRecentArticles();
        List<Module> modules = moduleService.getModuleList();
        modelAndView.addObject("recentArticles",recentArticles);
        modelAndView.addObject("modules",modules);
        modelAndView.addObject("module",module);
        modelAndView.addObject("article",article);
        modelAndView.addObject("host",Host);
        modelAndView.setViewName("/editShow");
        return modelAndView;
    }

    @RequestMapping(value = "/addComment",method = RequestMethod.POST)
    public boolean addComment(Integer articleId,String author,String content){
        Integer id = commentService.insert(articleId,author,content);
        articleService.updateCommentTimes(articleId);
        if(id!=0){
            return true;
        }else{
            return false;
        }
    }
}
