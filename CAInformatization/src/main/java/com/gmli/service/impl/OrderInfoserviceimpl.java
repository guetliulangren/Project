package com.gmli.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.gmli.dao.OrderInfoMapper;
import com.gmli.pojo.OrderInfo;
import com.gmli.service.OrderInfoservice;

/**
 * @author LGM
 * @date 2019/05/14
 */
@Service("OrderInfoservice")
public class OrderInfoserviceimpl implements OrderInfoservice {

    @Resource
    private OrderInfoMapper orderInfoMapper;

    @Override
    public void addorder(OrderInfo orderInfo) {
        // TODO Auto-generated method stub
        orderInfoMapper.insertorder(orderInfo);
    }

    @Override
    public List<OrderInfo> selectorder() {
        // TODO Auto-generated method stub
        return orderInfoMapper.selectorder();
    }

    @Override
    public List<OrderInfo> selectgraph() {
        // TODO Auto-generated method stub
        return orderInfoMapper.selectgraph();
    }

    @Override
    public List<OrderInfo> selectdetail() {
        // TODO Auto-generated method stub
        return orderInfoMapper.selectdetail();
    }

    @Override
    public List<OrderInfo> selectproductgrap(String productsfamername) {
        // TODO Auto-generated method stub
        return orderInfoMapper.selectproductgrap(productsfamername);
    }

}
