package com.ganhuo.controller;

import com.ganhuo.config.SpiderUtil;
import com.ganhuo.model.domain.Article;
import com.ganhuo.model.domain.ArticleDesc;
import com.ganhuo.model.domain.Comment;
import com.ganhuo.model.domain.Module;
import com.ganhuo.model.domain.Tocken;
import com.ganhuo.service.client.ArticleDescService;
import com.ganhuo.service.client.ArticleService;
import com.ganhuo.service.client.CommentService;
import com.ganhuo.service.client.ModuleService;
import com.qiniu.util.Auth;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import javax.annotation.Resource;

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

    @Resource
    private ArticleService articleService;

    @RequestMapping("")
    public ModelAndView get(@RequestHeader("Host") String Host) {
        return returnIndex(Host);
    }

    @RequestMapping("/index")
    public ModelAndView index(@RequestHeader("Host") String Host) {
        return returnIndex(Host);
    }

    private ModelAndView returnIndex(String Host) {
        ModelAndView modelAndView = new ModelAndView();
        List<Module> modules = moduleService.getModuleList();
        List<ArticleDesc> indexArticles = articleDescService.getIndexArticle();
        List<ArticleDesc> lastArticles = articleDescService.getLastArticles(10);
        List<Comment> comments = commentService.getRecentComments(5);
        List<ArticleDesc> links = articleDescService.getLinks();
        modelAndView.addObject("links", links);
        modelAndView.addObject("lastArticles", lastArticles);
        modelAndView.addObject("modules", modules);
        modelAndView.addObject("comments", comments);
        modelAndView.addObject("indexArticles", indexArticles);
        return result(Host, "/indexNew", modelAndView);
    }

    @RequestMapping("/module")
    public ModelAndView module(@RequestHeader("Host") String Host) {
        List<ArticleDesc> articleList = articleDescService.getArticleListByType(1);
        List<Module> modules = moduleService.getModuleList();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("modules", modules);
        modelAndView.addObject("articles", articleList);
        modelAndView.addObject("host", Host);
        modelAndView.setViewName("/content");
        List<ArticleDesc> links = articleDescService.getLinks();
        modelAndView.addObject("links", links);
        return modelAndView;
    }

    @RequestMapping("/edit")
    public ModelAndView edit(@RequestHeader("Host") String Host) {
        List<ArticleDesc> articleList = articleDescService.getAllArticle();
        List<Module> modules = moduleService.getModuleList();
        ModelAndView modelAndView = new ModelAndView();
        List<ArticleDesc> links = articleDescService.getLinks();
        modelAndView.addObject("links", links);
        modelAndView.addObject("modules", modules);
        modelAndView.addObject("articles", articleList);
        modelAndView.addObject("host", Host);
        modelAndView.setViewName("/edit");
        return modelAndView;
    }

    @RequestMapping("/publish")
    public ModelAndView publish(@RequestHeader("Host") String Host) {
        ModelAndView modelAndView = new ModelAndView();
        List<Module> modules = moduleService.getModuleList();
        modelAndView.addObject("modules", modules);
        return result(Host, "/publish", modelAndView);
    }

    @RequestMapping("/article")
    public ModelAndView article(@RequestHeader("Host") String Host) {
        ArticleDesc article = articleDescService.getFirstArticle();
        article.setReadTimes(article.getReadTimes() + 1);
        articleDescService.updateReadTime(article);
        List<Module> modules = moduleService.getModuleList();
        ModelAndView modelAndView = new ModelAndView();
        List<ArticleDesc> recentArticles = articleDescService.getRecentArticles();
        List<ArticleDesc> links = articleDescService.getLinks();
        modelAndView.addObject("links", links);
        modelAndView.addObject("recentArticles", recentArticles);
        modelAndView.addObject("modules", modules);
        modelAndView.addObject("article", article);
        modelAndView.addObject("host", Host);
        modelAndView.setViewName("/article");
        return modelAndView;
    }

    @RequestMapping("/login")
    public ModelAndView login(@RequestHeader("Host") String Host) {
        ModelAndView modelAndView = new ModelAndView();
        List<ArticleDesc> links = articleDescService.getLinks();
        modelAndView.addObject("links", links);
        return result(Host, "/login", modelAndView);
    }

    @RequestMapping("/spider")
    public void spider(@RequestHeader("Host") String Host) {
        List<ArticleDesc> articleDescs = SpiderUtil.lzys();
        articleDescService.addSpiderDesc(articleDescs);
        ModelAndView modelAndView = new ModelAndView();
    }

    @RequestMapping("/spiderArticle")
    public void spiderArticle(@RequestHeader("Host") String Host) {
        List<ArticleDesc> articleDescs = articleDescService.getSpirderUrl();
        for (ArticleDesc ar : articleDescs) {
            Article article = new Article();
            article.setTitle(ar.getTitle());
            article.setContent(SpiderUtil.getTextByUrl(ar.getImgUrl()));
            articleService.saveSpiderText(article);
        }
        ModelAndView modelAndView = new ModelAndView();
    }

    @RequestMapping("/addSpiderArticle")
    public void addSpiderArticle(@RequestHeader("Host") String Host) {
        List<Article> articles = articleService.getSpiderArticle(10);
        articleService.insert(articles);
        articleService.deleteSpiderArticle(articles);

    }

    @RequestMapping("/uploadToken")
    public Tocken uploadToken() {
        Auth auth = Auth.create("Cb1t1_u_nnZQossAwz5hUeun-FRwvWupLze5A-yH", "3gitOL1vKTA1ozChmwGV_U_Qa9GcPvJUAiuYTViI");
        Tocken tocken = new Tocken();
        tocken.setUptoken(auth.uploadToken("ganhuo"));
        return tocken;
    }

    //    @RequestMapping("/404")
    //    public ModelAndView notFoudError(@RequestHeader("Host") String Host){
    //        ModelAndView modelAndView = new ModelAndView();
    //        return result(Host,"/404",modelAndView);
    //    }
    //
    //    @RequestMapping("/500")
    //    public ModelAndView serverError(@RequestHeader("Host") String Host){
    //        ModelAndView modelAndView = new ModelAndView();
    //        return result(Host,"/500",modelAndView);
    //    }

    private ModelAndView result(String Host, String name, ModelAndView modelAndView) {
        List<Module> modules = moduleService.getModuleList();
        modelAndView.addObject("modules", modules);
        modelAndView.addObject("host", Host);
        modelAndView.setViewName(name);
        return modelAndView;
    }

}
