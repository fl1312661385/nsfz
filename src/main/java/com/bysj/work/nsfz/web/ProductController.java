package com.bysj.work.nsfz.web;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bysj.work.nsfz.model.Comment;
import com.bysj.work.nsfz.model.CommentReplay;
import com.bysj.work.nsfz.model.Menu;
import com.bysj.work.nsfz.model.Product;
import com.bysj.work.nsfz.service.CommentService;
import com.bysj.work.nsfz.service.ProductService;
import com.bysj.work.nsfz.util.PageUtils;
import com.bysj.work.nsfz.util.Recurrence;

@Controller
public class ProductController {

	@Autowired
	private ProductService productService;
	@Autowired
	private CommentService commentService;
	@RequestMapping("details")
	public String product(Integer productId,HttpServletRequest request,HttpSession session){
		
		 Product productInformation=productService.getProductInformation(productId);
		 request.setAttribute("productInformation", productInformation);
		 //查询出所有第一次评论
		 List<Comment> commentlist=commentService.getCommentByPid(productId);
		 int firstcomment=commentlist.size();
		 //查询出有回复的list集合		 
		 List<CommentReplay> commentReplays=commentService.getCommentReplay(productId);
		 //将cid和rid抽取出来
		 List<Menu> menuList=new ArrayList<Menu>();
		 for(CommentReplay s:commentReplays){
			 Menu mu=new Menu();
			 mu.setId(s.getCommentId());
			 mu.setPid(s.getCommentId1());
			 menuList.add(mu);
		 }
		 //初始化开始递归
		 List<Integer> resultList=new ArrayList<Integer>();
		 List<List<Comment>> result = new LinkedList<List<Comment>>();
		 Recurrence recurrence=new Recurrence();
		 for(Comment c: commentlist){
			 int x=c.getCommentId();
			 resultList=recurrence.treeMenuList(menuList,x);
			 System.out.println(resultList);
			 List<Comment> result1=commentService.findByCommentParentId(resultList);
			 result.add(result1);
			 resultList.clear();
		 }
		 request.setAttribute("commentlist", commentlist);
		 request.setAttribute("result", result);
		 if((String)session.getAttribute("userName")!=null){
			 request.setAttribute("userId", (String)session.getAttribute("userName"));
		 }
		
		return "details";
	}
	
	@RequestMapping("specific")
	public String specific(Integer type,String currentPage,HttpServletRequest request){
		List<Product> kindofproduct=productService.getKindofProduct(type);
		int count=kindofproduct.size();
		request.setAttribute("count", count);
		request.setAttribute("kindofproduct", kindofproduct);
		request.setAttribute("type", type);
		System.out.println(currentPage);
		int pageSize=3;
		PageUtils util = new PageUtils(currentPage, count, pageSize);
		request.setAttribute("util", util);
		return "specific";
	}
	//查询单个商品结算
	@RequestMapping("oneproduct")
	public String oneproduct(Integer productId,Integer productcount,HttpSession session){
		Product oneproduct=productService.getProductInformation(productId);
		session.setAttribute("oneproduct", oneproduct);
		session.setAttribute("productcount", productcount);
		return "oneproduct";
	}
	//搜索商品
	//有个bug
	@RequestMapping("searchproduct")
	public String searchproduct(String title,String currentPage,HttpServletRequest request){
		System.out.println("0000000000000000000000000"+title);
		List<Product> serchproduct=productService.searchproduct(title);
		int count=serchproduct.size();
		if(count==0){
			return "noproduct";
		}else{
			request.setAttribute("title", title);
			request.setAttribute("count", count);
			request.setAttribute("serchproduct", serchproduct);
			int pageSize=2;
			PageUtils util = new PageUtils(currentPage, count, pageSize);
			request.setAttribute("util", util);
			return "searchproduct";
		}
		
	}
}
