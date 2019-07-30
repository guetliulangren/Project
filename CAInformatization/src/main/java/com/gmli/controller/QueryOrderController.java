package com.gmli.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.gmli.pojo.Msg;
import com.gmli.pojo.OrderInfo;
import com.gmli.service.OrderInfoservice;

/**
 * @author LGM
 * @date 2019/05/20
 */
@Controller("QueryOrderController")
@RequestMapping("QueryOrder")
public class QueryOrderController {

    @Resource
    OrderInfoservice orderInfoservice;

    @GetMapping(value = "/order1")
    @ResponseBody
    public Msg queryproduct(@RequestParam(value = "pn", defaultValue = "1") Integer pn) {
        // 设置分页信息(第几页，每页数量)
        PageHelper.startPage(pn, 6);
        List<OrderInfo> list = orderInfoservice.selectorder();
        // 将数据封装在pageinfo里面，导航条数
        PageInfo<OrderInfo> page = new PageInfo<>(list, 6);

        return Msg.success().add("pageinfo", page);
    }

}
