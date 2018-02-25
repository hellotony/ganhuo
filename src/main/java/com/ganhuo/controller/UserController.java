package com.ganhuo.controller;

import com.ganhuo.model.domain.ArticleDesc;
import com.ganhuo.model.domain.Comment;
import com.ganhuo.model.domain.Module;
import com.ganhuo.service.client.ArticleDescService;
import com.ganhuo.service.client.CommentService;
import com.ganhuo.service.client.ModuleService;
import com.ganhuo.service.client.UserService;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

/**
 * Created by sunzhiqiang on 2016/12/3.
 */

@RestController
@RequestMapping("/user")
public class UserController {

    @Resource
    private UserService userService;
    @Resource
    private ArticleDescService articleDescService;

    @Resource
    private ModuleService moduleService;

    @Resource
    private CommentService commentService;

    //判断用户名 是否存在  true：不存在
    @RequestMapping("/checkUserName")
    public boolean checkUserName(String username) {
        return userService.checkUserName(username);
    }

    //用户注册
    @RequestMapping("/add")
    public ModelAndView add(String username, String email, String password, @RequestHeader("Host") String Host) {
        userService.add(username, email, password);
        ModelAndView modelAndView = new ModelAndView();
        return result(Host, "/signIn", modelAndView);
    }

    @RequestMapping("/signIn")
    public ModelAndView signIn(String username, String password, HttpSession httpSession,
                               @RequestHeader("Host") String Host) {
        httpSession.setAttribute("username", username);
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

    private ModelAndView result(String Host, String name, ModelAndView modelAndView) {
        List<Module> modules = moduleService.getModuleList();
        modelAndView.addObject("modules", modules);

        modelAndView.addObject("host", Host);
        modelAndView.setViewName(name);
        return modelAndView;
    }

}
