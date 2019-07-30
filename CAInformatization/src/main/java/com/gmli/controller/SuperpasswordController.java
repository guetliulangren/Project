package com.gmli.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gmli.pojo.Msg;
import com.gmli.pojo.Supermanager;
import com.gmli.service.Superservice;

@Controller("SuperpasswordController")
@RequestMapping("upsuper")
public class SuperpasswordController {

    @Resource
    private Superservice superservice;
    String credicial;

    /**
     * 更新用户密码
     * 
     * @return
     */
    @PostMapping(value = "/upsuper")
    @ResponseBody
    public Msg updatepassword(@RequestParam("username") String username,
        @RequestParam("oldpassword") String oldpassword, @RequestParam("freshpassword") String freshpassword,
        @RequestParam("depassword") String depassword) {

        Supermanager u = new Supermanager();
        u = superservice.getUserlogin(username);
        if (u != null) {
            credicial = u.getPassword();
            if (credicial.equals(oldpassword) && freshpassword.equals(depassword)) {
                Supermanager humaninfo = new Supermanager();
                humaninfo.setPassword(freshpassword);
                humaninfo.setUserName(username);
                superservice.updater(humaninfo);
                return Msg.success();
            }
        }

        return Msg.fail();

    }
}
