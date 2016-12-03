package com.ganhuo.service.client;

/**
 * Created by sunzhiqiang on 2016/12/3.
 */
public interface UserService {
    public void add(String username,String email,String password);

    boolean checkUserName(String username);
}
