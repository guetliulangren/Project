package com.gmli.controller;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.gmli.pojo.Msg;
import com.gmli.pojo.User;
import com.gmli.service.Roleservice;
import com.gmli.service.UserService;

@Controller("Role")
@RequestMapping("role")
public class Rolecontroller {
    /**
     * 注入
     */
    private static final Logger LOGGER = LoggerFactory.getLogger(Rolecontroller.class);
    private static final String ROLENAME = "gmli";
    @Resource
    private UserService uService;
    @Resource
    Roleservice roleservice;

    @RequestMapping(value = "/uprole", method = RequestMethod.GET)
    @ResponseBody
    public Msg rolemanage(@RequestParam(value = "pn", defaultValue = "1") Integer pn) {

        // 设置分页信息(第几页，每页数量)
        PageHelper.startPage(pn, 6);
        List<User> list = uService.getuser();
        // 将数据封装在pageinfo里面，导航条数
        PageInfo<User> page = new PageInfo<>(list, 6);

        return Msg.success().add("pageinfo", page);

    }

    /**
     * 修改用户角色
     * 
     * @param userName
     * @param id
     * @return
     */
    @GetMapping("Atrole")
    @ResponseBody
    public Msg uprole(@RequestParam("username") String userName, @RequestParam("id") String id) {

        Integer roleid = Integer.parseInt(id);
        if (roleid == 1 && !userName.equals(ROLENAME)) {
            try {
                // 修改用户权限
                roleservice.updateUprole(2, userName);

                return Msg.success().add("role", "成功");

            } catch (RuntimeException e) {
                // TODO: handle exception
                LOGGER.info("没有权限", e);

            }

        } else if (roleid == 2 && !userName.equals(ROLENAME)) {
            try {
                roleservice.updateUprole(1, userName);
                return Msg.success();

            } catch (RuntimeException e) {
                // TODO: handle exception
                LOGGER.info("没有权限", e);

            }

        }

        return Msg.fail().Message("你没有权限修改");
    }

    /**
     * 注销用户
     */
    @GetMapping("remove")
    @ResponseBody
    public Msg removerole(@RequestParam("username") String userName) {

        try {

            if (!userName.equals(ROLENAME)) {

                roleservice.deleterole(userName);

                return Msg.success().add("removerole", "成功");

            }

        } catch (RuntimeException e) {
            // TODO: handle exception
            LOGGER.info("没有权限", e);

        }

        return Msg.fail().Message("你没有权限注销");

    }

}
