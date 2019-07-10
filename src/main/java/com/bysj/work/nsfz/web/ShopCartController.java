package com.bysj.work.nsfz.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bysj.work.nsfz.model.Product;
import com.bysj.work.nsfz.model.ShopCart;
import com.bysj.work.nsfz.model.User;
import com.bysj.work.nsfz.model.UserAddress;
import com.bysj.work.nsfz.model.UserCart;
import com.bysj.work.nsfz.service.ProductService;
import com.bysj.work.nsfz.service.ShopCartService;
@Controller
public class ShopCartController {
	@Autowired
	private ShopCartService shopcartService;
	@Autowired
	private ProductService productService;
	@RequestMapping("order")
	public String order(Integer userId,Integer productId,Integer productcount,HttpSession session,HttpServletRequest request){
		System.out.println("woshi============="+productId);
		if(productId!=null){
			session.setAttribute("productId", productId);
			UserAddress userAddress=shopcartService.getUserAddress(userId);
			session.setAttribute("useraddress", userAddress);
			session.setAttribute("productcount", productcount);
		}
		
		return "order";
	}
	
	//加入一个商品到购物车
	@RequestMapping("joincart")
	public String joincart(Integer productId,Integer productcount,HttpServletRequest request,HttpSession session){
		int userId=(int) session.getAttribute("userId");
		ShopCart alreadyproduct=shopcartService.find(userId,productId);
		Product product=productService.getProductInformation(productId);
		String  productName=product.getProductName();
		if(alreadyproduct!=null){
			int aproduct=alreadyproduct.getQuantity();
			int nowproductcount=aproduct+productcount;
			shopcartService.changequantity(userId,productId,nowproductcount);
		}else{
			shopcartService.addoneproduct(userId,productId,productName,productcount);
		}
		
		request.setAttribute("productId",productId);
		return "joincart";
	}
	@RequestMapping("shopcart")
	public String shopcart(HttpSession session,HttpServletRequest request){
		int userId=(int) session.getAttribute("userId");
		List<UserCart> cartinformation=shopcartService.getCartInformation(userId);
		request.setAttribute("cartInformation", cartinformation);
		return "shopcart";
	}
	@RequestMapping("allproductorder")
	public String allproductorder(HttpServletRequest request,HttpSession session){
		int userId=(int) session.getAttribute("userId");
		UserAddress userAddress=shopcartService.getUserAddress(userId);
		request.setAttribute("useraddress", userAddress);
		List<UserCart> cartinformation=shopcartService.getCartInformation(userId);
		request.setAttribute("cartInformation", cartinformation);
		return "allproductorder";
	}
	
//	移除购物车中一个商品
	@RequestMapping("deletecart")
	public String deletecart(int productId,HttpSession session){
		int userId=(int) session.getAttribute("userId");
		shopcartService.deletecart(userId, productId);
		return "forward:/shopcart";
		
	}
	
//	购物车相同商品数量加一
	@ResponseBody
	@RequestMapping("addproduct")
	public int addproduct(int productId,HttpSession session){
		int userId=(int) session.getAttribute("userId");
		//System.out.println("0000000000000000000000000"+userId);
		ShopCart alreadyproduct=shopcartService.find(userId,productId);
		int aproduct=alreadyproduct.getQuantity();
		int nowproductcount=aproduct+1;
		shopcartService.changequantity(userId,productId,nowproductcount);
		return nowproductcount;
		
	}
//	购物车相同商品数量减一
	@ResponseBody
	@RequestMapping("reduceproduct")
	public int reduce(int productId,HttpSession session){
		int userId=(int) session.getAttribute("userId");
		//System.out.println("0000000000000000000000000"+userId);
		ShopCart alreadyproduct=shopcartService.find(userId,productId);
		int aproduct=alreadyproduct.getQuantity();
		int nowproductcount=aproduct-1;
		shopcartService.changequantity(userId,productId,nowproductcount);
		return nowproductcount;
		
	}
	@ResponseBody
	@RequestMapping("removeCart")
	public int removeCart(HttpSession session){
		int userId=(int) session.getAttribute("userId");
		int data=shopcartService.removeCart(userId);
		
		return data;
		
	}
	
	
}
