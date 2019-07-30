package com.gmli.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.gmli.pojo.User;

/**
 * Created by lenovo on 2017/4/18.
 */
public interface UserMapper {
    /**
     * 注册用户
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

    /* 查询用户信息 */
    public List<User> getuser();

    /**
     * 更新用户信息
     * 
     * @param user_name
     */
    public void updater(@Param("password") String password, @Param("userName") String user_name);

    /**
     * 修改用户权限
     * 
     * @param roleID
     * @param user_name
     */
    public void uprole(@Param("roleID") Integer roleID, @Param("userName") String user_name);

    /**
     * 注销用户
     * 
     * @param user_name
     */
    public void derole(@Param("userName") String user_name);

    /**
     * 修改用户信息
     * 
     * @param user_name
     */
    public void updateinfo(@Param("userName") String user_name, @Param("address") String address,
        @Param("phoneNumber") String phoneNumber);

}
