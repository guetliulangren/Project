package com.gmli.service;

import java.util.List;

import com.gmli.pojo.Comment;

public interface Commentservice {
    List<Comment> selectcomment();

    void addcomment(Comment comment);
}
