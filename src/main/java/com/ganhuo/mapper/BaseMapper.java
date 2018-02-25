package com.ganhuo.mapper;

import com.ganhuo.model.domain.User;

/**
 * Created by sunzhiqiang on 2016/12/3.
 */
public interface BaseMapper {

    void addUser(User user);

    int selectUserCountByName(String username);
}
