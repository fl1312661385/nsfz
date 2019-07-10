package com.bysj.work.nsfz.service;

import java.util.List;

import com.bysj.work.nsfz.model.ShopCart;
import com.bysj.work.nsfz.model.UserAddress;
import com.bysj.work.nsfz.model.UserCart;

public interface ShopCartService {

	UserAddress getUserAddress(Integer userId);

	ShopCart find(int userId, Integer productId);

	void changequantity(int userId, Integer productId, int nowproductcount);

	void addoneproduct(int userId, Integer productId, String productName, Integer productcount);

	

	void deletecart(int userId, int productId);

	List<UserCart> getCartInformation(int userId);

	int removeCart(int userId);

}
