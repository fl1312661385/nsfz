package com.bysj.work.nsfz.service;

import java.util.List;

import com.bysj.work.nsfz.model.Comment;
import com.bysj.work.nsfz.model.CommentReplay;

public interface CommentService {

	void insert(Comment comment);

	List<Comment> getCommentByPid(Integer productId);

	List<CommentReplay> getCommentReplay(Integer productId);


	List<Comment> findByCommentParentId(List<Integer> resultList);

	String getReplyName(Integer commentId);
}
