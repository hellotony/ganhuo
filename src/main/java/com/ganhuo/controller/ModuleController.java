package com.ganhuo.controller;

import com.ganhuo.model.domain.Article;
import com.ganhuo.model.domain.Module;
import com.ganhuo.service.client.ArticleService;
import com.ganhuo.service.client.ModuleService;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by sunzhiqiang on 2016/9/18.
 */
@RestController
@RequestMapping("/module")
public class ModuleController {

    @Resource
    private ModuleService moduleService;

    @Resource
    private ArticleService articleService;

    @RequestMapping("/{typeId}")
    public ModelAndView module(@PathVariable("typeId") Integer typeId,@RequestHeader("Host") String Host) {
        List<Article> articleList = articleService.getArticleListByType(typeId);
        List<Module> modules = moduleService.getModuleList();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("modules",modules);
        modelAndView.addObject("articles", articleList);
        modelAndView.addObject("host",Host);
        modelAndView.setViewName("/content");
        return modelAndView;
    }






}
