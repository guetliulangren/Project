package com.gmli.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.gmli.dao.ProductMapper;
import com.gmli.pojo.Product;
import com.gmli.service.Productservice;

/**
 * @author LGM
 * @date 2019/05/13
 */
@Service("Productservice")
public class Productserviceimpl implements Productservice {
    @Resource
    private ProductMapper dao;

    // 添加产品
    @Override
    public void addproduct(Product product) {
        // TODO Auto-generated method stub

        dao.insertproduct(product);
    }

    // 根据农户名查产品信息
    @Override
    public List<Product> selectproduct(String productsfamername) {
        // TODO Auto-generated method stub
        return dao.selectproduct(productsfamername);
    }

    // 根据出售状态查询产品信息
    @Override
    public List<Product> queryproduct(Integer productsStatus) {
        // TODO Auto-generated method stub
        return dao.queryproduct(productsStatus);
    }

    // 根据UUID查询产品
    @Override
    public Product selectproductbyUUID(String productsuuid) {
        // TODO Auto-generated method stub
        return dao.selectproductbyUUID(productsuuid);
    }

    // 更新产品数量
    @Override
    public void updateproductinfo(Integer productsStatus, String productsuuid) {
        // TODO Auto-generated method stub
        dao.upproductinfo(productsStatus, productsuuid);
    }

    // 修改库存信息
    @Override
    public void updaterepertory(Integer productsNumber, String productsuuid) {
        // TODO Auto-generated method stub
        dao.updaterepertory(productsNumber, productsuuid);

    }

}
