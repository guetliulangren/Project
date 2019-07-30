package com.gmli.service;

import com.gmli.pojo.Supermanager;

/**
 * @author LGM
 * @date 2019/05/20
 */
public interface Superservice {

    Supermanager getUserlogin(String supername);

    public void updater(Supermanager humaninfo);
}
