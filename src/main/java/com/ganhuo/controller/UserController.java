package com.ganhuo.controller;

import com.ganhuo.service.client.UserService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

/**
 * Created by sunzhiqiang on 2016/12/3.
 */

@RestController
@RequestMapping("/user")
public class UserController {

    @Resource
    private UserService userService;


    //判断用户名 是否存在
    @RequestMapping("/checkUserName")
    public boolean checkUserName(String username){
        return userService.checkUserName(username);
    }

    //用户注册
    @RequestMapping("/add")
    public void add(String username,String email,String password){
        userService.add(username,email,password);
    }



}
