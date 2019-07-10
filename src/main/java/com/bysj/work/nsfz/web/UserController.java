package com.bysj.work.nsfz.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bysj.work.nsfz.model.Address;
import com.bysj.work.nsfz.model.User;
import com.bysj.work.nsfz.model.UserAddress;
import com.bysj.work.nsfz.service.AddressService;
import com.bysj.work.nsfz.service.UserService;



@Controller
public class UserController {

	@Autowired
	private UserService userService;
	@Autowired
	private AddressService addressService;
	@RequestMapping("login")
	public String login(String mobile,String password,HttpSession session,HttpServletRequest request){
		
		User user=new User();
		user.setMobile(mobile);
		user.setPassword(password);
		user=userService.find(user);
		if(user!=null){
			int useType=user.getUseType();
			if(useType==0){
				int userId=user.getUserId();
				String userName=user.getUserName();
				session.setAttribute("userName", userName);
				session.setAttribute("userId", userId);
				return "../../index";
			}else{
				request.setAttribute("msg", "该用户已被禁用！");
				return "../../login";
			}
		}
		request.setAttribute("msg", "用户名或者密码错误！");
		return "../../login";
	}
	@RequestMapping("register")
	public String register(User user,HttpSession session){
		/*User user=new User();
		user.setMobile(userAddress.getMobile());
		user.setPassword(userAddress.getPassword());
		user.setUserName(userAddress.getUserName());*/
		userService.insert(user);
		session.setAttribute("userName", user.getUserName());
		session.setAttribute("userId", user.getUserId());
	/*	Address address=new Address();
		addressService.insertById(user.getUserId(), userAddress.getAddress(), userAddress.getPostcode());*/
		return "../../index";
	}
	@RequestMapping("userData")
	public String userData(HttpSession session,HttpServletRequest request){
		int userId=(int) session.getAttribute("userId");
		User user=userService.getUserById(userId);//得到用户名和手机号
		Address address=addressService.getAddressById(userId);
		request.setAttribute("user", user);
		request.setAttribute("address", address);
		
		return "userData";
	}
	
	@RequestMapping("changeuserData")
	public String changeuserData(HttpSession session,String userName,Integer postcode,String address,String mobile){
		int userId=(int) session.getAttribute("userId");
		userService.changeUserById(userId,userName,mobile);
		Address address2=addressService.getAddressById(userId);
		if (address2!=null) {
			addressService.changeAddressById(userId,address,postcode);
		}else{
			addressService.insertById(userId,address,postcode);
		}
		
		return "forward:/userData";
	}
	
	
	@RequestMapping("checkmyMobile")
	@ResponseBody
	public int checkMobile(String mobile){
		/*System.out.println("进入方法了");*/
		User user=userService.checkMobile(mobile);
		/*System.out.println("4=========="+user);*/
		if(user==null){
			//该用户没有注册返回1
			return 1;
		}
		return 0;
	}
	
	
	
	
	
}
