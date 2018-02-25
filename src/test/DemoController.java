package com.ganhuo.controller;

import com.ganhuo.model.domain.AgentUser;
import com.ganhuo.service.client.AgentUserService;
import org.noggit.JSONUtil;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@RestController
@RequestMapping("/demo")
public class DemoController {

    private static final org.slf4j.Logger LOG = LoggerFactory.getLogger(DemoController.class);
    @Resource
    private AgentUserService agentUserService;

    @RequestMapping("/{id}")
    public String demo(@PathVariable("id") Long id) {
        return "id is" + id;
    }

    @RequestMapping("/demoSql/{id}")
    public String demoSql(@PathVariable("id") Long id) {
        AgentUser agentUser = agentUserService.getById(id);

        return JSONUtil.toJSON(agentUser);

    }

    @RequestMapping("/index")
    public ModelAndView index() {
        return new ModelAndView("/index");
    }

    @RequestMapping("/index1")
    public ModelAndView index1() {
        return new ModelAndView("/indexNew");
    }

    @RequestMapping("/content")
    public ModelAndView content() {
        return new ModelAndView("/content");
    }

    @RequestMapping("/article")
    public ModelAndView article() {
        return new ModelAndView("/article");
    }

    @RequestMapping("/login")
    public ModelAndView login() {
        return new ModelAndView("/login");
    }

    /**
     * 登出、退出
     */
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public void logout(HttpServletRequest request, HttpServletResponse response) throws Exception {
    }

    private long getDeviceId() {
        return (System.currentTimeMillis() * 1000 + (long)(Math.random() * 1000)) * -1;
    }
}
