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

@Controller()
@RequestMapping(value = "upinfo")
public class UpinfoController {
    /**
     * 注入
     */
    @Resource
    private UserService userService;

    @GetMapping(value = "/upinfomation")
    @ResponseBody
    public Msg getrolename(@RequestParam("name") String name) {

        User u = userService.getUserByUserName(name);
        if (u != null) {

            return Msg.success().add("results", u);

        } else {
            return Msg.fail();
        }

    }

    /**
     * 更新用户信息
     */
    @PostMapping("update")
    @ResponseBody
    public Msg update(@RequestParam("userName") String userName, @RequestParam("address") String address,
        @RequestParam("phoneNumber") String phoneNumber) {
        if (!userName.equals(" ")) {
            userService.updateinfo(userName, address, phoneNumber);
            return Msg.success().Message("修改成功");
        }

        return Msg.fail().Message("修改失败");

    }

}
