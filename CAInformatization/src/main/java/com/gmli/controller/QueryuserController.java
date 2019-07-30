package com.gmli.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gmli.pojo.Msg;
import com.gmli.pojo.User;
import com.gmli.service.UserService;

/**
 * @author LGM
 * @date 2019/05/20
 */

@Controller("QueryuserController")
@RequestMapping("user")
public class QueryuserController {

    @Resource
    private UserService userService;

    @GetMapping(value = "/querybyname")
    @ResponseBody
    public Msg getrolename(@RequestParam("name") String name) {

        User u = userService.getUserByUserName(name);
        if (u != null) {

            System.out.println(u);
            return Msg.success().add("results", u);

        } else {
            return Msg.fail();
        }

    }

}
