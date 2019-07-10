package com.bysj.work.nsfz.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bysj.work.nsfz.dao.OrderDao;
import com.bysj.work.nsfz.model.Order;
import com.bysj.work.nsfz.service.OrderService;

@Service("orderService")
public class OrderServiceImpl implements OrderService{
	@Autowired
	private OrderDao orderDao;
	
	@Override
	public int insertOrder(Order order) {
		orderDao.insertOrder(order);
		return order.getOrderId();
	}
	@Override
	public List<Order> findUserOrder(int userId) {
		// TODO Auto-generated method stub
		return orderDao.findUserOrder(userId);
	}
	@Override
	public void cancel(Integer orderId) {
		// TODO Auto-generated method stub
		orderDao.cancel(orderId);
	}
	@Override
	public void ordergoods(Integer orderId) {
		// TODO Auto-generated method stub
		orderDao.ordergoods(orderId);
	}
	
	@Override
	public void changeOrderType(Integer orderId) {
		// TODO Auto-generated method stub
		orderDao.changeOrderType(orderId);
	}
	

}
