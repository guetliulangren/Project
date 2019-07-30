package com.gmli.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.gmli.pojo.Product;

/**
 * @author LGM
 * @date 2019/05/13
 */
public interface ProductMapper {
    // 添加产品
    void insertproduct(Product product);

    // 通过用户名查产品信息
    List<Product> selectproduct(String productsfamername);

    // 通过UUid查询用户信息
    Product selectproductbyUUID(String productsuuid);

    // 通过状态查产品信息
    List<Product> queryproduct(Integer productsStatus);

    // 更新产品数量
    void upproductinfo(@Param("productsStatus") Integer productsStatus, @Param("productsuuid") String productsuuid);

    // 修改库存信息
    void updaterepertory(@Param("productsNumber") Integer productsNumber, @Param("productsuuid") String productsuuid);
}
