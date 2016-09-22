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

	@Resource
	private AgentUserService agentUserService;

	private static final org.slf4j.Logger LOG = LoggerFactory.getLogger(DemoController.class);

	@RequestMapping("/{id}")
	public String demo(@PathVariable("id") Long id){
		return "id is"+id;
	}

	@RequestMapping("/demoUpload")
	public ModelAndView demoUpload(){
		return new ModelAndView("/demoUpload");
	}

	@RequestMapping("/demoUpload1")
	public String demoUpload1(){
		return "/demoUpload1";
	}


	@RequestMapping("/demoFtl")
	public ModelAndView demeFtl(){
		return new ModelAndView("/demoFtl");
	}

	@RequestMapping("/demoSql/{id}")
	public String demoSql(@PathVariable("id") Long id){
		AgentUser agentUser = agentUserService.getById(id);

		return JSONUtil.toJSON(agentUser);

	}

	@RequestMapping("/wangEditor")
	public ModelAndView wangEditor(){
		return  new ModelAndView("/wangEditor");
	}

	@RequestMapping("/index")
	public ModelAndView index(){
		return new ModelAndView("/index");
	}

	@RequestMapping("/content")
	public ModelAndView content(){
		return new ModelAndView("/content");
	}

	@RequestMapping("/article")
	public ModelAndView article(){
		return new ModelAndView("/article");
	}

	@RequestMapping("/login")
	public ModelAndView login(){
		return new ModelAndView("/login");
	}

	@RequestMapping("/publish")
	public ModelAndView publish(){
		return new ModelAndView("/publish");
	}

	/**
	 * 登出、退出
	 * */
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public void logout(HttpServletRequest request, HttpServletResponse response) throws Exception{
	}
	

	
	private long getDeviceId(){
        return (System.currentTimeMillis() * 1000 + (long)(Math.random() * 1000) ) * -1;
    }
}
