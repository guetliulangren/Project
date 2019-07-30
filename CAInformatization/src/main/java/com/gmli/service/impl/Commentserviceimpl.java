package com.gmli.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.gmli.dao.CommentMapper;
import com.gmli.pojo.Comment;
import com.gmli.service.Commentservice;

/**
 * @author LGM
 * @date 2019/05/21
 */
@Service("Commentservice")
public class Commentserviceimpl implements Commentservice {

    @Resource
    private CommentMapper commentmapper;

    @Override
    public List<Comment> selectcomment() {
        // TODO Auto-generated method stub
        return commentmapper.selectcomment();
    }

    @Override
    public void addcomment(Comment comment) {
        // TODO Auto-generated method stub
        commentmapper.addcomment(comment);

    }

}
