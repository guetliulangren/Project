package com.gmli.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gmli.pojo.Chartpojo;
import com.gmli.pojo.OrderInfo;
import com.gmli.service.OrderInfoservice;

/**
 * @author LGM
 * @date 2019/05/22
 */

@Controller("FarmerpriceController")
@RequestMapping("pricegrap")
public class FarmerpriceController {

    @Resource
    private OrderInfoservice orderInfoservice;

    @RequestMapping(value = "/orderprice")
    @ResponseBody
    public String orderlistprice(@RequestParam("productsfamername") String productsfamername) {

        List<OrderInfo> list = new ArrayList<>();
        List<Chartpojo> list1 = new ArrayList<>();
        list = orderInfoservice.selectproductgrap(productsfamername);

        for (OrderInfo orderInfo : list) {
            Chartpojo chartpojo = new Chartpojo();
            chartpojo.setName(orderInfo.getProductsName());
            chartpojo.setValue(orderInfo.getOrderprice());
            list1.add(chartpojo);

        }

        net.sf.json.JSONArray jsonArray = net.sf.json.JSONArray.fromObject(list1);

        return jsonArray.toString();

    }

}
