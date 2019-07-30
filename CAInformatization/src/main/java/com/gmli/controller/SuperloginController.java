package com.gmli.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gmli.pojo.Msg;
import com.gmli.pojo.Supermanager;
import com.gmli.service.Superservice;

@Controller("SuperloginController")
@RequestMapping("login")
public class SuperloginController {
    @Resource
    private Superservice superservice;
    String passwd;

    @PostMapping(value = "/superman")
    @ResponseBody
    public Msg login(@RequestParam("username") String name, @RequestParam("password") String password

        , HttpSession session) {

        Supermanager u = new Supermanager();
        u = superservice.getUserlogin(name);
        if (u != null) {
            passwd = u.getPassword();
            if (password.equals(passwd)) {

                session.setAttribute("superman", u.getUserName());
                return Msg.success();
            }

        }

        return Msg.fail();
    }

    @RequestMapping(value = "/signout")
    public String logout(HttpSession httpSession) {
        httpSession.removeAttribute("superman");
        return "redirect:../login.jsp";
    }
}
