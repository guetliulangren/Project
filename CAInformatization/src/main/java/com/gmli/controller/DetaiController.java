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

@Controller("DetaiController")
@RequestMapping("querydetail")
public class DetaiController {

    @Resource
    private OrderInfoservice orderInfoservice;

    @RequestMapping(value = "/orderdetail")
    @ResponseBody
    public String orderlist() {

        List<OrderInfo> list = new ArrayList<>();
        List<Chartpojo> list1 = new ArrayList<>();
        list = orderInfoservice.selectdetail();

        for (OrderInfo orderInfo : list) {
            Chartpojo chartpojo = new Chartpojo();
            chartpojo.setName(orderInfo.getProductsName());
            chartpojo.setValue(orderInfo.getProductsNumber());
            list1.add(chartpojo);

        }

        net.sf.json.JSONArray jsonArray = net.sf.json.JSONArray.fromObject(list1);

        return jsonArray.toString();

    }

}
