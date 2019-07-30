package com.gmli.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gmli.pojo.Chartpojo;
import com.gmli.pojo.OrderInfo;
import com.gmli.service.OrderInfoservice;

@Controller("ChartController")
@RequestMapping("chart")
public class ChartController {
    @Resource
    private OrderInfoservice orderInfoservice;

    @RequestMapping(value = "/chartinfo")
    public String chartstr() {

        return "Chart";
    }

    @RequestMapping(value = "/orderlist")
    @ResponseBody
    public String orderlistbytype() {
        Chartpojo chartpojo = new Chartpojo();
        Integer num1 = 0;
        Integer num2 = 0;
        Integer num3 = 0;
        List<OrderInfo> list = new ArrayList<>();
        list = orderInfoservice.selectorder();
        for (OrderInfo orderInfo : list) {

            if (orderInfo.getProductsType().equals("水果")) {

                num1 += orderInfo.getProductsNumber();

            }
            if (orderInfo.getProductsType().equals("蔬菜")) {

                num2 += orderInfo.getProductsNumber();

            }
            if (orderInfo.getProductsType().equals("其他")) {

                num3 += orderInfo.getProductsNumber();

            }

        }
        List<Chartpojo> list1 = new ArrayList<>();
        Chartpojo chartpojo1 = new Chartpojo();
        Chartpojo chartpojo2 = new Chartpojo();
        chartpojo.setValue(num1);
        chartpojo.setName("水果");
        chartpojo1.setValue(num2);
        chartpojo1.setName("蔬菜");
        chartpojo2.setValue(num3);
        chartpojo2.setName("其他");
        list1.add(chartpojo);
        list1.add(chartpojo1);
        list1.add(chartpojo2);
        net.sf.json.JSONArray jsonArray = net.sf.json.JSONArray.fromObject(list1);

        return jsonArray.toString();

    }

}
