package com.gmli.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.gmli.dao.SupermanagerMapper;
import com.gmli.pojo.Supermanager;
import com.gmli.service.Superservice;

/**
 * @author LGM
 * @date 2019/05/20
 */
@Service("Superservice")
public class Superserviceimpl implements Superservice {
    @Resource
    private SupermanagerMapper supermanagerMapper;

    @Override
    public Supermanager getUserlogin(String supername) {
        // TODO Auto-generated method stub
        return supermanagerMapper.getUserlogin(supername);
    }

    @Override
    public void updater(Supermanager humaninfo) {
        // TODO Auto-generated method stub
        supermanagerMapper.updater(humaninfo);

    }

}
