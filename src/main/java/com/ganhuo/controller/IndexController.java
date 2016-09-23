package com.ganhuo.controller;

import com.ganhuo.model.domain.Article;
import com.ganhuo.model.domain.Module;
import com.ganhuo.model.domain.Tocken;
import com.ganhuo.service.client.ArticleService;
import com.ganhuo.service.client.ModuleService;
import com.qiniu.util.Auth;
import com.sun.org.apache.xpath.internal.operations.Mod;
import com.sun.tools.doclets.formats.html.PackageUseWriter;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by sunzhiqiang on 2016/8/26.
 */
@RestController
@RequestMapping("")
public class IndexController {

    @Resource
    private ArticleService articleService;

    @Resource
    private ModuleService moduleService;

    @RequestMapping("")
    public ModelAndView get(@RequestHeader("Host") String Host){
        return returnIndex(Host);
    }

    @RequestMapping("/index")
    public ModelAndView index(@RequestHeader("Host") String Host){
        return returnIndex(Host);
    }

    private ModelAndView returnIndex(String Host){
        ModelAndView modelAndView = new ModelAndView();
        List<Module> modules = moduleService.getModuleList();
        List<Article> articles = articleService.getMostHotArticle(9);
        modelAndView.addObject("hotArticles",articles);
        modelAndView.addObject("modules",modules);
        return result(Host,"/index",modelAndView);
    }

    @RequestMapping("/module")
    public ModelAndView module(@RequestHeader("Host") String Host){
        List<Article> articleList = articleService.getArticleListByType(1);
        List<Module> modules = moduleService.getModuleList();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("modules",modules);
        modelAndView.addObject("articles", articleList);
        modelAndView.addObject("host",Host);
        modelAndView.setViewName("/content");
        return modelAndView;
    }

    @RequestMapping("/publish")
    public ModelAndView publish(@RequestHeader("Host") String Host){
        ModelAndView modelAndView = new ModelAndView();
        List<Module> modules = moduleService.getModuleList();
        modelAndView.addObject("modules",modules);
        return result(Host,"/publish",modelAndView);
    }

    @RequestMapping("/publish1")
    public ModelAndView publish1(@RequestHeader("Host") String Host){
        ModelAndView modelAndView = new ModelAndView();
        List<Module> modules = moduleService.getModuleList();
        modelAndView.addObject("modules",modules);
        return result(Host,"/publish1",modelAndView);
    }

    @RequestMapping("/article")
    public ModelAndView article(@RequestHeader("Host") String Host){
        Article article = articleService.getFirstArticle();
        article.setReadTimes(article.getReadTimes()+1);
        articleService.updateReadTime(article);
        List<Module> modules = moduleService.getModuleList();
        ModelAndView modelAndView = new ModelAndView();
        List<Article> recentArticles = articleService.getRecentArticles();
        modelAndView.addObject("recentArticles",recentArticles);
        modelAndView.addObject("modules",modules);
        modelAndView.addObject("article",article);
        modelAndView.addObject("host",Host);
        modelAndView.setViewName("/article");
        return modelAndView;
    }

    @RequestMapping("/login")
    public ModelAndView login(@RequestHeader("Host") String Host){
        ModelAndView modelAndView = new ModelAndView();
        return result(Host,"/login",modelAndView);
    }

    @RequestMapping("/uploadToken")
    public Tocken uploadToken(){
        Auth auth = Auth.create("Cb1t1_u_nnZQossAwz5hUeun-FRwvWupLze5A-yH","3gitOL1vKTA1ozChmwGV_U_Qa9GcPvJUAiuYTViI");
        Tocken tocken = new Tocken();
        tocken.setUptoken(auth.uploadToken("ganhuo"));
        return tocken;
    }




    private ModelAndView result(String Host,String name,ModelAndView modelAndView){
        modelAndView.addObject("host",Host);
        modelAndView.setViewName(name);
        return modelAndView;
    }
}
