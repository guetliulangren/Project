package com.gmli.service;

import java.util.List;

import com.gmli.pojo.User;

/**
 * 接口类
 */
public interface UserService {
    /**
     * 添加用户
     * 
     * @param user
     */
    public void addUser(User user);

    /**
     * 连接查询用户信息
     * 
     * @param user_name
     * @return
     */
    public User getUserByUserName(String user_name);

    /**
     * 检测用户是否存在
     * 
     * @param username
     * @return
     */

    public boolean checkLogin(String username);

    /**
     * 更新密码
     * 
     * @param user_name
     */

    public void updater(String password, String user_name);

    /* 查询用户信息 */
    /* 查询用户信息 */
    public List<User> getuser();

    /**
     * 修改用户信息
     * 
     * @param user_name
     */
    public void updateinfo(String user_name, String address, String phoneNumber);
}
