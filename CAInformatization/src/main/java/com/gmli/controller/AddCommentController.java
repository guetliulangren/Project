package com.gmli.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gmli.pojo.Comment;
import com.gmli.pojo.Msg;
import com.gmli.service.Commentservice;
import com.gmli.util.Utiltime;

@Controller("AddCommentController")
@RequestMapping("addcomment")
public class AddCommentController {
    @Resource
    private Commentservice commentservice;

    @PostMapping(value = "/comment")
    @ResponseBody
    public Msg addcomment(@RequestParam("name") String name, @RequestParam("title") String title,
        @RequestParam("comment") String comment) {

        if (name.trim().length() == 0 || title.trim().length() == 0 || comment.trim().length() == 0) {

            return Msg.fail();

        } else {
            Comment comment2 = new Comment();
            comment2.setReportname(name);
            comment2.setReporttitle(title);
            comment2.setReportcomment(comment);
            comment2.setReporttime(Utiltime.getcurrenttime());
            commentservice.addcomment(comment2);

            return Msg.success();
        }

    }

    @GetMapping(value = "/reportstart")
    @ResponseBody
    public Msg reportstar() {

        List<Comment> list = new ArrayList<>();
        list = commentservice.selectcomment();
        if (list.isEmpty()) {

            return Msg.fail();
        }

        return Msg.success().add("report", list);

    }

}
