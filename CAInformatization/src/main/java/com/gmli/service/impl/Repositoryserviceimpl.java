package com.gmli.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.gmli.dao.RepositoryMapper;
import com.gmli.pojo.Repositorypojo;
import com.gmli.service.Repositoryservice;

/**
 * @author LGM
 * @date 2019/05/15
 */
@Service("Repositoryservice")
public class Repositoryserviceimpl implements Repositoryservice {

    @Resource
    private RepositoryMapper repositoryMapper;

    // 通过产品名称查询
    @Override
    public Repositorypojo queryrepositorybyname(String productsName) {
        // TODO Auto-generated method stub
        return repositoryMapper.queryrepositorybyname(productsName);
    }

    // 插入库存信息

    // 通过产品名更新价格和数量
    @Override
    public void updaterepositorypojo(Repositorypojo repositorypojo) {
        // TODO Auto-generated method stub
        repositoryMapper.updaterepositorypojo(repositorypojo);

    }

    @Override
    public void saverepositorypojo(Repositorypojo repositorypojo) {
        // TODO Auto-generated method stub
        repositoryMapper.insertrepositorypojo(repositorypojo);
    }

    @Override
    public List<Repositorypojo> queryall() {
        // TODO Auto-generated method stub
        return repositoryMapper.queryall();
    }

}
