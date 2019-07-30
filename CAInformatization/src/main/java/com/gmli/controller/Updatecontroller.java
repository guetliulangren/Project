package com.gmli.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gmli.pojo.Msg;
import com.gmli.pojo.User;
import com.gmli.service.UserService;

@Controller("updater")
@RequestMapping(value = "up")
public class Updatecontroller {

    @Resource
    private UserService uService;
    String credicial;

    /**
     * 更新用户密码
     * 
     * @return
     */
    @PostMapping(value = "/uppassword")
    @ResponseBody
    public Msg updatepassword(@RequestParam("username") String username,
        @RequestParam("oldpassword") String oldpassword, @RequestParam("freshpassword") String freshpassword,
        @RequestParam("depassword") String depassword) {
        User u = uService.getUserByUserName(username.trim());
        if (oldpassword.equals(" ") || freshpassword.equals(" ") || depassword.equals(" ")) {
            return Msg.fail().Message("输入不能为空");
        }

        if (u != null) {
            credicial = u.getPassword();
            /**
             * 确认旧密码不一致返回失败
             */

            if (!freshpassword.equals(depassword)) {

                return Msg.fail();

            }
            /**
             * 新密码校验
             */
            else if (!credicial.equals(oldpassword)) {

                return Msg.fail();
            } else {
                uService.updater(freshpassword, username);
                return Msg.success();
            }

        }

        return Msg.fail();

    }

    /**
     * 从数据库中获取用户数据
     * 
     * @param name
     * @return
     */
    @GetMapping(value = "/getName")
    @ResponseBody
    public Msg getName(@RequestParam("name") String name) {

        User u = uService.getUserByUserName(name);
        if (u != null) {

            return Msg.success().add("results", u);

        } else {
            return Msg.fail();
        }

    }

}
