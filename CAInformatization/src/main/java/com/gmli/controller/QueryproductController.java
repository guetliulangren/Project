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
import com.gmli.pojo.Product;
import com.gmli.service.Productservice;

/**
 * @author LGM
 * @date 2019/05/13
 */
@Controller("QueryproductController")
@RequestMapping("Query")
public class QueryproductController {

    @Resource
    Productservice productservice;

    @GetMapping(value = "/products")
    @ResponseBody
    public Msg queryproduct(@RequestParam(value = "pn", defaultValue = "1") Integer pn,
        @RequestParam("productsfamername") String productsfamername) {
        // 设置分页信息(第几页，每页数量)
        PageHelper.startPage(pn, 6);
        List<Product> list = productservice.selectproduct(productsfamername);
        // 将数据封装在pageinfo里面，导航条数
        PageInfo<Product> page = new PageInfo<>(list, 6);

        return Msg.success().add("pageinfo", page);
    }

    @GetMapping(value = "/bystatus")
    @ResponseBody
    public Msg queryproductbystatus(@RequestParam(value = "pn", defaultValue = "1") Integer pn) {
        // 设置分页信息(第几页，每页数量)
        PageHelper.startPage(pn, 6);
        List<Product> list = productservice.queryproduct(0);
        // 将数据封装在pageinfo里面，导航条数
        PageInfo<Product> page = new PageInfo<>(list, 6);

        return Msg.success().add("pageinfo", page);
    }

}
