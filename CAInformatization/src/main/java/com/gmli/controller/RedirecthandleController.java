package com.gmli.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author LGM
 * @date 2019/05/20
 */
@Controller
@RequestMapping("first")
public class RedirecthandleController {

    @GetMapping(value = "theone")
    public String redirectfirst() {

        return "logo";

    }

    @GetMapping(value = "user")
    public String redirectuser() {

        return "member-list1";

    }

    @GetMapping(value = "role")
    public String redirectrole() {

        return "admin-role";

    }

    @GetMapping(value = "info")
    public String redirectinfo() {

        return "admin-info";

    }

    @GetMapping(value = "Excel")
    public String redirectExcel() {

        return "excel";

    }

    @GetMapping(value = "buy")
    public String redirectbuy() {

        return "buy";

    }

    @GetMapping(value = "graph")
    public String redirectgraph() {

        return "Chart";

    }

    @GetMapping(value = "orderinfo")
    public String redirectorderinfo() {

        return "orderinfo";

    }

    @GetMapping(value = "orderchart")
    public String redirectorderchart() {

        return "orderchart";

    }

    @GetMapping(value = "orderdetai")
    public String redirectorderdetai() {

        return "orderdetail";

    }

    @GetMapping(value = "supermanage")
    public String redirectsupermanage() {

        return "supermanage";

    }

    @GetMapping(value = "notice")
    public String redirectnotice() {

        return "notice";

    }

    @GetMapping(value = "queryall")
    public String redirectqueryall() {

        return "resposity";

    }

    @GetMapping(value = "querymanagerinfo")
    public String redirectquerymanagerinfo() {

        return "supermanage-info";

    }

    @GetMapping(value = "repassword")
    public String redirectrepassword() {

        return "repassword";

    }

    @GetMapping(value = "log")
    public String redirectlog() {

        return "log";

    }

    @GetMapping(value = "product")
    public String redirectproduct() {

        return "product";

    }

    @GetMapping(value = "farmresposity")
    public String redirectfarmresposity() {

        return "farmresposity";

    }

    @GetMapping(value = "caculaticegrap")
    public String redirectcaculaticegrap() {

        return "caculaticegrap";

    }

    @GetMapping(value = "manegerpassword")
    public String redirectmanegerpassword() {

        return "remanagerpassword";

    }
}
