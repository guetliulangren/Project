package com.gmli.dao;

import java.util.List;

import com.gmli.pojo.Comment;

/**
 * @author LGM
 * @date 2019/05/21
 */
public interface CommentMapper {

    List<Comment> selectcomment();

    void addcomment(Comment comment);

}
