package com.gmli.dao;

import java.util.List;

import com.gmli.pojo.Repositorypojo;

/**
 * @author LGM
 * @date 2019/05/15
 */
public interface RepositoryMapper {

    // 通过产品名称查询
    Repositorypojo queryrepositorybyname(String productsName);

    // 插入库存信息
    void insertrepositorypojo(Repositorypojo repositorypojo);

    // 通过产品名更新价格和数量
    void updaterepositorypojo(Repositorypojo repositorypojo);

    List<Repositorypojo> queryall();

}
