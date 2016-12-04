package com.ganhuo.service;

import com.ganhuo.mapper.BaseMapper;
import com.ganhuo.model.domain.User;
import com.ganhuo.service.client.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;

/**
 * Created by sunzhiqiang on 2016/12/3.
 */
@Service("userService")
public class UserServiceImpl implements UserService{

    @Resource
    private BaseMapper baseMapper;


    @Override
    public void add(String username, String email, String password) {
        User user = new User();
        user.setUsername(username);
        user.setEmail(email);
        user.setPassword(password);
        user.setAddTime(new Date());
        user.setUpdateTime(new Date());
        baseMapper.addUser(user);

    }

    @Override
    public boolean checkUserName(String username) {
        int count = baseMapper.selectUserCountByName(username);
        if(count == 0){
            return true;
        }
        return false;
    }
}
