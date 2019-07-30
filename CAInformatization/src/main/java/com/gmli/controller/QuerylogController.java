package com.gmli.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.gmli.pojo.Log;
import com.gmli.pojo.Msg;
import com.gmli.service.Logservice;

/**
 * @author LGM
 * @date 2019/04/13
 */
@Controller("logquery")
@RequestMapping("log")
public class QuerylogController {
    @Resource
    Logservice logservice;

    @GetMapping("querylog")
    @ResponseBody
    public Msg Querylog(@RequestParam(value = "pn", defaultValue = "1") Integer pn) {
        // 设置分页信息(第几页，每页数量)
        PageHelper.startPage(pn, 6);
        // 创建动态数组，java规范创建方式
        List<Log> list = new ArrayList<>();
        list = logservice.selectlog();
        // 将数据封装在pageinfo里面，导航条数目
        PageInfo<Log> page = new PageInfo<>(list, 6);
        // 向页面返回分页数据
        return Msg.success().add("pageinfo", page);

    }

}
