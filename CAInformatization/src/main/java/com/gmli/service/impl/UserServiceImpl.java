package com.gmli.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.gmli.dao.UserMapper;
import com.gmli.pojo.User;
import com.gmli.service.UserService;

/**
 * 
 * @author LGM
 *
 */

@Service("userService")
public class UserServiceImpl implements UserService {

    @Resource
    private UserMapper userMapper;

    public User getUserByUserName(String user_name) {
        /**
         * 通过username从数据库查询数据
         */
        User user1 = userMapper.getUserByUserName(user_name);
        return user1;
    }

    /**
     * 校验名字
     */
    public boolean checkLogin(String username) {
        User user = userMapper.getUserByUserName(username);
        if (user != null) {
            return true;
        }
        return false;
    }

    /**
     * 添加用户
     */
    public void addUser(User user) {
        userMapper.addUser(user);
    }

    /**
     * 更改用户密码
     */
    @Override
    public void updater(String password, String user_name) {
        // TODO Auto-generated method stub
        userMapper.updater(password, user_name);
    }

    /**
     * 查询用户信息
     */
    @Override
    public List<User> getuser() {
        // TODO Auto-generated method stub

        return userMapper.getuser();
    }

    /* 
      更新用户信息
     */
    @Override
    public void updateinfo(String user_name, String address, String phoneNumber) {
        // TODO Auto-generated method stub
        userMapper.updateinfo(user_name, address, phoneNumber);
    }
}
