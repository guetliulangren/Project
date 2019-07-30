package com.gmli.service;

import java.util.List;

import com.gmli.pojo.OrderInfo;

/**
 * @author LGM
 * @date 2019/05/14
 */
public interface OrderInfoservice {

    void addorder(OrderInfo orderInfo);

    List<OrderInfo> selectorder();

    List<OrderInfo> selectgraph();

    List<OrderInfo> selectdetail();

    List<OrderInfo> selectproductgrap(String productsfamername);

}
