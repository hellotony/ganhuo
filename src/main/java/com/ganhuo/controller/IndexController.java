package com.ganhuo.controller;

import com.ganhuo.model.domain.*;
import com.ganhuo.service.client.ArticleDescService;
import com.ganhuo.service.client.CommentService;
import com.ganhuo.service.client.ModuleService;
import com.qiniu.util.Auth;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import javax.annotation.Resource;
import java.util.List;

/**
 * Created by sunzhiqiang on 2016/8/26.
 */
@RestController
@RequestMapping("")
public class IndexController {

    @Resource
    private ArticleDescService articleDescService;

    @Resource
    private ModuleService moduleService;

    @Resource
    private CommentService commentService;

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
//        List<ArticleDesc> articles = articleDescService.getArticleGroup();
        List<ArticleDesc> indexArticles = articleDescService.getIndexArticle();
//        ArticleDesc art = articleDescService.getLastArticle();
        List<ArticleDesc> lastArticles = articleDescService.getLastArticles(5);
        List<Comment> comments = commentService.getRecentComments(5);
//        List<ArticleDesc> hotArticles = articleDescService.getMostHotArticle(9);
//        for(Module m:modules){
//            for(ArticleDesc a:articles){
//                if(a.getType() == m.getId()){
//                    m.setArticleDesc(a);
//                }
//            }
//        }
//        modelAndView.addObject("hotArticles",hotArticles);
        modelAndView.addObject("lastArticles",lastArticles);
        modelAndView.addObject("modules",modules);
        modelAndView.addObject("comments",comments);
//        modelAndView.addObject("art",art);
        modelAndView.addObject("indexArticles",indexArticles);
        return result(Host,"/indexNew",modelAndView);
    }

    @RequestMapping("/module")
    public ModelAndView module(@RequestHeader("Host") String Host){
        List<ArticleDesc> articleList = articleDescService.getArticleListByType(1);
        List<Module> modules = moduleService.getModuleList();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("modules",modules);
        modelAndView.addObject("articles", articleList);
        modelAndView.addObject("host",Host);
        modelAndView.setViewName("/content");
        return modelAndView;
    }
//    @RequestMapping("/table")
//    public ModelAndView table(@RequestHeader("Host") String Host){
//        List<ArticleDesc> articleList = articleDescService.getArticleListByType(1);
//        List<Module> modules = moduleService.getModuleList();
//        ModelAndView modelAndView = new ModelAndView();
//        modelAndView.addObject("modules",modules);
//        modelAndView.addObject("articles", articleList);
//        modelAndView.addObject("host",Host);
//        modelAndView.setViewName("/table");
//        return modelAndView;
//    }

    @RequestMapping("/edit")
    public ModelAndView edit(@RequestHeader("Host") String Host){
        List<ArticleDesc> articleList = articleDescService.getAllArticle();
        List<Module> modules = moduleService.getModuleList();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("modules",modules);
        modelAndView.addObject("articles", articleList);
        modelAndView.addObject("host",Host);
        modelAndView.setViewName("/edit");
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
        ArticleDesc article = articleDescService.getFirstArticle();
        article.setReadTimes(article.getReadTimes()+1);
        articleDescService.updateReadTime(article);
        List<Module> modules = moduleService.getModuleList();
        ModelAndView modelAndView = new ModelAndView();
        List<ArticleDesc> recentArticles = articleDescService.getRecentArticles();
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
