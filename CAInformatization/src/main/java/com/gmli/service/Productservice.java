package com.gmli.service;

import java.util.List;

import com.gmli.pojo.Product;

/**
 * @author LGM
 * @date 2019/05/13
 */
public interface Productservice {
    // 添加产品
    void addproduct(Product product);

    // 通过用户名查产品信息
    public List<Product> selectproduct(String productsfamername);

    // 通过UUid查询用户信息
    Product selectproductbyUUID(String productsuuid);

    // 通过状态查产品信息
    List<Product> queryproduct(Integer productsStatus);

    // 更新产品数量
    void updateproductinfo(Integer productsStatus, String productsuuid);

    // 修改库存信息
    void updaterepertory(Integer productsNumber, String productsuuid);

}
