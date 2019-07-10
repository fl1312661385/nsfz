package com.bysj.work.nsfz.dao;

import java.util.List;

import com.bysj.work.nsfz.model.Order;

public interface OrderDao {

	

	Integer insertOrder(Order order);

	List<Order> findUserOrder(int userId);

	void cancel(Integer orderId);
	//改状态为3
	void ordergoods(Integer orderId);
	//改状态为1
	void insertPayOrder(Integer orderId);

	void changeOrderType(Integer orderId);

}
