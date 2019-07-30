package com.gmli.dao;

import com.gmli.pojo.Supermanager;

/**
 * @author LGM
 * @date 2019/05/20
 */
public interface SupermanagerMapper {

    Supermanager getUserlogin(String supername);

    /**
     * 更新用户信息
     * 
     * @param user_name
     */
    public void updater(Supermanager humaninfo);

}
