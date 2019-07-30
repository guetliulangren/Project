package com.gmli.test;

import javax.annotation.Resource;

import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.gmli.dao.OrderInfoMapper;
import com.gmli.pojo.OrderInfo;
import com.gmli.util.Utiltime;

/**
 * @author LGM
 * @date 2019/05/15
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:conf/applicationContext.xml"})
public class Testorder {
    @Resource
    private OrderInfoMapper Service;

    @org.junit.Test
    public void TestSetup() {
        OrderInfo orderInfo = new OrderInfo();
        orderInfo.setProductsType("pingguo");
        orderInfo.setProductsPrice(1);
        orderInfo.setProductsStatus(1);
        orderInfo.setProductsNumber(1);
        orderInfo.setProductsName("dd");
        orderInfo.setProductstime(Utiltime.getcurrenttime());
        orderInfo.setProductsfamername("jj");
        orderInfo.setProductsphone("1223355");
        orderInfo.setProductsaddress("ddddd");
        orderInfo.setProductsuuid("12155");
        orderInfo.setOrderprice(155);
        orderInfo.setOperatename("dddd");
        Service.insertorder(orderInfo);
    }

}
