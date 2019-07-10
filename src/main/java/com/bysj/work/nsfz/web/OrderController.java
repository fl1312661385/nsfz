package com.bysj.work.nsfz.web;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.request.AlipayTradePagePayRequest;
import com.alipay.config.AlipayConfig;
import com.bysj.work.nsfz.model.Order;
import com.bysj.work.nsfz.model.Product;
import com.bysj.work.nsfz.model.ShopCart;
import com.bysj.work.nsfz.model.User;
import com.bysj.work.nsfz.model.UserCart;
import com.bysj.work.nsfz.service.BillService;
import com.bysj.work.nsfz.service.OrderService;
import com.bysj.work.nsfz.service.ProductService;
import com.bysj.work.nsfz.service.ShopCartService;
import com.bysj.work.nsfz.service.UserService;
import com.bysj.work.nsfz.util.PageUtils;


@Controller
public class OrderController {
	@Autowired
	private ShopCartService shopcartService;
	@Autowired
	private ProductService productService;
	@Autowired
	private UserService userService;
	@Autowired
	private OrderService orderService;
	@Autowired
	private BillService billService;
	@RequestMapping("Onepay")
	public String Onepay(Order order,HttpSession session,HttpServletRequest request) throws AlipayApiException{
		System.out.println("333333333333"+order);
		int userId=(int) session.getAttribute("userId");
		int productId=(int) session.getAttribute("productId");
		Product product=productService.getOneproduct(productId);
		order.setUserId(userId);
		order.setProductName(product.getProductName());
		order.setProductImg(product.getProductImg());
		order.setOrderPrice(product.getTprice()*order.getQuantity());
		String result1="";
		Random random = new Random();
		for (int j=0;j<9;j++)
		{
			result1+=random.nextInt(10);
		}
		int orderCode=Integer.parseInt(result1);
		order.setOrderCode(orderCode);
		int upOrderId=orderService.insertOrder(order);
		//支付宝
		AlipayClient alipayClient = new DefaultAlipayClient(AlipayConfig.gatewayUrl, AlipayConfig.app_id, AlipayConfig.merchant_private_key, "json", AlipayConfig.charset, AlipayConfig.alipay_public_key, AlipayConfig.sign_type);
		
		//设置请求参数
		AlipayTradePagePayRequest alipayRequest = new AlipayTradePagePayRequest();
		alipayRequest.setReturnUrl(AlipayConfig.return_url);
		alipayRequest.setNotifyUrl(AlipayConfig.notify_url);
		
		//商户订单号，商户网站订单系统中唯一订单号，必填
		Integer aDouble=(int)(Math.random()*1000000000);
		String aString=aDouble.toString();
		String out_trade_no = aString;
		//付款金额，必填
		User userById = userService.getUserById(userId);
		String total_amount ="0.1";
		//订单名称，必填
		String subject=userById.getUserName()+"的订单";
		//商品描述，可空
		String body = "我是商品描述";
		
		alipayRequest.setBizContent("{\"out_trade_no\":\""+ out_trade_no +"\"," 
				+ "\"total_amount\":\""+ total_amount +"\"," 
				+ "\"subject\":\""+ subject +"\"," 
				+ "\"body\":\""+ body +"\"," 
				+ "\"product_code\":\"FAST_INSTANT_TRADE_PAY\"}");
		//请求
		String result = alipayClient.pageExecute(alipayRequest).getBody();
		request.setAttribute("form", result);
		//输出
		System.out.println(result);
		//更改刚插入的订单状态
//		orderService.insertPayOrder(upOrderId);
		//生成账单
		session.setAttribute("upOrderId", upOrderId);
		//key为假代表单个商品结算
		session.setAttribute("key", false);
	//根据用户id查购物车表
	return "pay";
		
	}

	@RequestMapping("pay")
	public String pay(Order order,HttpSession session,HttpServletRequest request) throws AlipayApiException{
		
		List<Integer> orderIdlist=new ArrayList<>();
//		//根据用户id查用户表
//		User orderuser=userService.getUserById(userId);
		int userId=(int) session.getAttribute("userId");
		List<UserCart> list=shopcartService.getCartInformation(userId);
		for(UserCart icart:list){
			order.setUserId(userId);
			order.setProductName(icart.getProductName());
			order.setProductImg(icart.getProductImg());
			order.setQuantity(icart.getQuantity());
			int productId=icart.getProductId();
			Product product=productService.getProductInformation(productId);
			order.setOrderPrice(product.getTprice());
			Random random = new Random();
			String result1="";
			for (int j=0;j<9;j++)
			{
				result1+=random.nextInt(10);
			}
			int orderCode=Integer.parseInt(result1);
			order.setOrderCode(orderCode);
			int oreder3Id=orderService.insertOrder(order);
			orderIdlist.add(oreder3Id);
			
		}
		session.setAttribute("orderIdlist", orderIdlist);
		System.out.println("==================");
		//支付宝
			AlipayClient alipayClient = new DefaultAlipayClient(AlipayConfig.gatewayUrl, AlipayConfig.app_id, AlipayConfig.merchant_private_key, "json", AlipayConfig.charset, AlipayConfig.alipay_public_key, AlipayConfig.sign_type);
			
			//设置请求参数
			AlipayTradePagePayRequest alipayRequest = new AlipayTradePagePayRequest();
			alipayRequest.setReturnUrl(AlipayConfig.return_url);
			alipayRequest.setNotifyUrl(AlipayConfig.notify_url);
			
			//商户订单号，商户网站订单系统中唯一订单号，必填
			Integer aDouble=(int)(Math.random()*1000000000);
			String aString=aDouble.toString();
			String out_trade_no = aString;
			//付款金额，必填
			User userById = userService.getUserById(userId);
			String total_amount ="0.1";
			//订单名称，必填
			String subject=userById.getUserName()+"的订单";
			//商品描述，可空
			String body = "我是商品描述";
			
			alipayRequest.setBizContent("{\"out_trade_no\":\""+ out_trade_no +"\"," 
					+ "\"total_amount\":\""+ total_amount +"\"," 
					+ "\"subject\":\""+ subject +"\"," 
					+ "\"body\":\""+ body +"\"," 
					+ "\"product_code\":\"FAST_INSTANT_TRADE_PAY\"}");
		
			
			//请求
			String result = alipayClient.pageExecute(alipayRequest).getBody();
			request.setAttribute("form", result);
			//输出
			System.out.println(result);
			//更改刚刚的订单信息
			//key为真代表多个商品结算
			session.setAttribute("key", true);
	
		//根据用户id查购物车表
		return "pay";
	}

	
	@RequestMapping("orderlist")
	public String orderlist(String currentPage,HttpSession session,HttpServletRequest request){
		int userId=(int) session.getAttribute("userId");
		List<Order> list=orderService.findUserOrder(userId);
		int count=list.size();
		request.setAttribute("count", count);
		request.setAttribute("list", list);
		int pageSize=4;
		PageUtils util = new PageUtils(currentPage, count, pageSize);
		request.setAttribute("util", util);
		return "orderlist";
	}
	
	
	@RequestMapping("cancelorder")
	public String cancelorder(Integer orderId,HttpServletRequest request){
		orderService.cancel(orderId);
		billService.del(orderId);
		return "forward:/orderlist";
	}
	
	@RequestMapping("ordergoods")
	public String ordergoods(Integer orderId,HttpServletRequest request){
		
		orderService.ordergoods(orderId);
		return "forward:/orderlist";
	}
	@RequestMapping("ceshi")
	public String ceshi(HttpSession session){
		session.setAttribute("upOrderId", 147);
		return "paysuccess";
	}
	
	@ResponseBody
	@RequestMapping("changeOrderTypelist")
	public Integer changeOrderTypelist(HttpSession session){
		List<Integer> list=(List<Integer>) session.getAttribute("orderIdlist");
		for(int i=0;i<list.size();i++){
			orderService.changeOrderType(list.get(i));
		}
		return 1;
	}
	
}
