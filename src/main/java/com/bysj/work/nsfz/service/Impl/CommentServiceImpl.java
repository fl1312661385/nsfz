package com.bysj.work.nsfz.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bysj.work.nsfz.dao.CommentDao;
import com.bysj.work.nsfz.model.Comment;
import com.bysj.work.nsfz.model.CommentReplay;
import com.bysj.work.nsfz.service.CommentService;
@Service("commentService")
public class CommentServiceImpl implements CommentService {
	@Autowired
	private CommentDao commentDao;

	@Override
	public void insert(Comment comment) {
		// TODO Auto-generated method stub
		commentDao.insert(comment);
	}

	@Override
	public List<Comment> getCommentByPid(Integer productId) {
		// TODO Auto-generated method stub
		return commentDao.getCommentByPid(productId);
	}

	@Override
	public List<CommentReplay> getCommentReplay(Integer productId) {
		// TODO Auto-generated method stub
		return commentDao.getCommentReplay(productId);
	}

	@Override
	public List<Comment> findByCommentParentId(List<Integer> resultList) {
		// TODO Auto-generated method stub
		return commentDao.findByCommentParentId(resultList);
	}

	@Override
	public String getReplyName(Integer commentId) {
		// TODO Auto-generated method stub
		return commentDao.getReplyName(commentId);
	}

	
}
