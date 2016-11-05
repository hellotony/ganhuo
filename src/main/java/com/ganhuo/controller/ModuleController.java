package com.ganhuo.controller;

import com.ganhuo.model.domain.Article;
import com.ganhuo.model.domain.ArticleDesc;
import com.ganhuo.model.domain.Module;
import com.ganhuo.service.client.ArticleDescService;
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

    @Resource
    private ArticleDescService articleDescService;

    @RequestMapping("/{typeId}")
    public ModelAndView module(@PathVariable("typeId") Integer typeId,@RequestHeader("Host") String Host) {
        List<Article> articleList = articleService.getArticleListByType(typeId);
        List<Module> modules = moduleService.getModuleList();
        List<ArticleDesc> lastArticles = articleDescService.getLastArticles(5);
        Module module = new Module();
        for(Module m:modules){
            if(m.getId() == typeId){
                module = m;
            }
        }
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("module",module);
        modelAndView.addObject("modules",modules);
        modelAndView.addObject("articles", articleList);
        modelAndView.addObject("lastArticles",lastArticles);
        modelAndView.addObject("host",Host);
        modelAndView.setViewName("/module");
//        modelAndView.setViewName("/table");
        return modelAndView;
    }






}
