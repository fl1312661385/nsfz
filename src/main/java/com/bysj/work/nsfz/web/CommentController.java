package com.bysj.work.nsfz.web;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bysj.work.nsfz.model.Comment;
import com.bysj.work.nsfz.model.User;
import com.bysj.work.nsfz.service.CommentService;
import com.bysj.work.nsfz.service.UserService;

@Controller
public class CommentController {
	@Autowired
	private CommentService commentService;
	@Autowired
	private UserService userService;
	@RequestMapping("comment")
	public String comment(Comment comment,HttpServletRequest request,HttpSession session){

		int userId=(int)session.getAttribute("userId");
		comment.setUserId(userId);
		User user=userService.getUserById(userId);
		comment.setCommentName(null);
		comment.setReplyName(user.getUserName());
		Date d = new Date();		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		SimpleDateFormat sd = new SimpleDateFormat("HH:mm:ss");
		String commentDate=sdf.format(d);
	    String commentTime=sd.format(d);
		comment.setCommentDate(commentDate);
		comment.setCommentTime(commentTime);
		comment.setCommentParentId(0);
		commentService.insert(comment);
		int productId=comment.getProductId();
		return "redirect:/details?productId="+productId+"";
	}
	@ResponseBody
	@RequestMapping("replyComment")
	public int replyComment(Integer productId,Integer commentId,String content,HttpSession session){
		int userId=(int)session.getAttribute("userId");
		
		String replyName=(String) session.getAttribute("userName");
		//根据commentid查询回复者的名字
		String commentName=commentService.getReplyName(commentId);
		Comment comment=new Comment();
		comment.setCommentName(commentName);
		comment.setReplyName(replyName);
		comment.setUserId(userId);
		comment.setProductId(productId);
		comment.setContent(content);
		Date d = new Date();		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		SimpleDateFormat sd = new SimpleDateFormat("HH:mm:ss");
		String commentDate=sdf.format(d);
	    String commentTime=sd.format(d);
		comment.setCommentDate(commentDate);
		comment.setCommentTime(commentTime);
		comment.setCommentParentId(commentId);
		commentService.insert(comment);
		/*System.out.println(commentId+"00000000000000000"+productId);*/
		/* redirect:/details?productId="+productId+" */
		return 1;
	}
	
	
	
}
