package com.bysj.work.nsfz.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bysj.work.nsfz.model.Product;
import com.bysj.work.nsfz.model.User;
import com.bysj.work.nsfz.service.ProductService;
import com.bysj.work.nsfz.service.UserService;

import com.bysj.work.nsfz.util.PageUtils;

@Controller
public class TurnController {
	@Autowired
	private ProductService productService;
	@Autowired
	private UserService userService;
	
	@RequestMapping("register_no")
	public String register(){
			
		return "register";
	}
	@RequestMapping("login_no")
	public String login_no(){
		
//		if(user.getMobile()!=null&&user.getPassword()!=null&&user.getUserName()!=null){
//			
//			userService.insert(user);
//			System.out.println("注册成功");
//			return "../../index";
//		}
//		
		return "../../login";
	}
	@RequestMapping("logintofirst")
	public String logintofirst(){
		return "../../index";
	}
	@RequestMapping("about")
	public String about(){
		return "about";
	}
	
	@RequestMapping("information")
	public String information(){
		return "information";
	}
	@RequestMapping("buytoday")
	public String buytoday(){
		return "buytoday";
	}
	@RequestMapping("commodity")
	public String commodity(String currentPage,HttpSession session,HttpServletRequest request){
		List<Product> allproduct=productService.getAllProduct();
		int count=allproduct.size();
		session.setAttribute("count", count);
		session.setAttribute("allproduct", allproduct);
		int pageSize=6;
		PageUtils util = new PageUtils(currentPage, count, pageSize);
		request.setAttribute("util", util);
		return "commodity";
	}
	
	@RequestMapping("exit")
	public String exit(HttpServletRequest request){
		request.getSession().invalidate();//清除 session 中的所有信息
		
		return "../../login";
	}
	
	@RequestMapping("forgetpassword")
	public String forgetpassword(HttpServletRequest request){
		 
		
		return "forgetpassword";
	}
	@ResponseBody
	@RequestMapping("changePassword")
	public int changePassword(HttpServletRequest request,String phone,String password){
		 
		userService.changePasswordByPhone(phone,password);
		return 1;
	}
	
	
}
