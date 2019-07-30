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

@Controller("OrderchartController")
@RequestMapping("OrderchartController")
public class OrderchartController {

    @Resource
    private OrderInfoservice orderInfoservice;

    @RequestMapping(value = "/ordergraph")
    @ResponseBody
    public String orderlistbyname() {

        List<OrderInfo> list = new ArrayList<>();
        List<Chartpojo> list1 = new ArrayList<>();
        list = orderInfoservice.selectgraph();

        for (OrderInfo orderInfo : list) {
            Chartpojo chartpojo = new Chartpojo();
            chartpojo.setName(orderInfo.getProductsfamername());
            chartpojo.setValue(orderInfo.getOrderprice());
            list1.add(chartpojo);

        }

        net.sf.json.JSONArray jsonArray = net.sf.json.JSONArray.fromObject(list1);

        return jsonArray.toString();

    }
}
