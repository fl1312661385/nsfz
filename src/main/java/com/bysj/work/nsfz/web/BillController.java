package com.bysj.work.nsfz.web;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bysj.work.nsfz.model.Bill;
import com.bysj.work.nsfz.model.BillOrder;
import com.bysj.work.nsfz.model.Comment;
import com.bysj.work.nsfz.service.BillService;
import com.bysj.work.nsfz.service.OrderService;
import com.bysj.work.nsfz.util.PageUtils;

@Controller
public class BillController {
	/**
	*@author fengliang
	*2019年4月9日
	*com.bysj.work.nsfz.web
	*/
	@Autowired
	private BillService billService;
	@Autowired
	private OrderService orderService;
	@ResponseBody
	@RequestMapping("insertbill")
	public int insert(HttpSession session){
		int orderId=(int) session.getAttribute("upOrderId");
		orderService.changeOrderType(orderId);
		int userId=(int) session.getAttribute("userId");
		Date d = new Date();		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String creatTime=sdf.format(d);
		Bill bill=new Bill();
		bill.setUserId(userId);
		bill.setOrderId(orderId);
		bill.setCreatTime(creatTime);
		billService.insert(bill);
		return 1;
		
	}
	
	@ResponseBody
	@RequestMapping("insertlistbill")
	public int insertlistbill(HttpSession session){
		List<Integer> list=(List<Integer>) session.getAttribute("orderIdlist");
		int userId=(int) session.getAttribute("userId");
		Date d = new Date();		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String creatTime=sdf.format(d);
		Bill bill=new Bill();
		bill.setUserId(userId);
		bill.setCreatTime(creatTime);
		for(int i=0;i<list.size();i++){
			bill.setOrderId(list.get(i));
			billService.insert(bill);
		}
		return 1;
	}
	
	@RequestMapping("mybill")
	public String mybill(String currentPage,HttpSession session,HttpServletRequest request){
		int userId=(int) session.getAttribute("userId");
		//根据账单时间和用户ID查询账单
		 List<List<BillOrder>> result = new LinkedList<List<BillOrder>>();
		//查询用户账单次数（creatTime)
		List<String> creatTimelist=billService.getBillBycreatTime(userId);
		for(String xlist : creatTimelist){
			List<BillOrder> list=billService.getAllBill(userId,xlist);
			result.add(list);
		}
		System.out.println(result);
		
		request.setAttribute("result", result);
		int pageSize=3;
		int count=result.size();
		PageUtils util = new PageUtils(currentPage, count, pageSize);
		request.setAttribute("util", util);
		return "mybill";
	}
//	@RequestMapping("delbybillId")
//	public String delbybillId(Integer billId){
//		billService.delBybillId(billId);
//		return "redirect:/mybill";
//	}
	
}
