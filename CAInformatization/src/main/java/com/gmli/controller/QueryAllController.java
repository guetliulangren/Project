package com.gmli.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.gmli.pojo.Msg;
import com.gmli.pojo.Repositorypojo;
import com.gmli.service.Repositoryservice;

/**
 * @author LGM
 * @date 2019/05/21
 */
@Controller("QueryAllController")
@RequestMapping("queryall")
public class QueryAllController {
    @Resource
    private Repositoryservice repositoryservice;

    @RequestMapping(value = "/resposity", method = RequestMethod.GET)
    @ResponseBody
    public Msg resposity(@RequestParam(value = "pn", defaultValue = "1") Integer pn) {

        // 设置分页信息(第几页，每页数量)
        PageHelper.startPage(pn, 6);
        List<Repositorypojo> list = repositoryservice.queryall();
        // 将数据封装在pageinfo里面，导航条数
        PageInfo<Repositorypojo> page = new PageInfo<>(list, 6);

        return Msg.success().add("pageinfo", page);

    }

}
