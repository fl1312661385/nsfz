package com.bysj.work.nsfz.service;

import java.util.List;

import com.bysj.work.nsfz.model.Order;

public interface OrderService {



	List<Order> findUserOrder(int userId);


	int insertOrder(Order order);


	void cancel(Integer orderId);


	void ordergoods(Integer orderId);


	


	void changeOrderType(Integer orderId);

}
