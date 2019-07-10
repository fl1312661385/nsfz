package com.bysj.work.nsfz.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bysj.work.nsfz.dao.ShopCartDao;
import com.bysj.work.nsfz.model.ShopCart;
import com.bysj.work.nsfz.model.UserAddress;
import com.bysj.work.nsfz.model.UserCart;
import com.bysj.work.nsfz.service.ShopCartService;
@Service("shopCartService")
public class ShopCartServiceImpl implements ShopCartService{
	@Autowired
	private ShopCartDao shopcartDao;

	public UserAddress getUserAddress(Integer userId) {
		// TODO Auto-generated method stub
		return shopcartDao.getUserAddress(userId);
	}

	public ShopCart find(int userId, Integer productId) {
		// TODO Auto-generated method stub
		return shopcartDao.find(userId,productId);
	}

	public void changequantity(int userId, Integer productId, int nowproductcount) {
		 shopcartDao.changequantity(userId,productId,nowproductcount);
		
		
	}



	public void deletecart(int userId, int productId) {
		shopcartDao.deletecart(userId,productId);
	}

	@Override
	public void addoneproduct(int userId, Integer productId, String productName, Integer productcount) {
		// TODO Auto-generated method stub
		shopcartDao.addoneproduct(userId,productId,productName,productcount);
	}

	@Override
	public List<UserCart> getCartInformation(int userId) {
		// TODO Auto-generated method stub
		return shopcartDao.getCartInformation(userId);
	}

	@Override
	public int removeCart(int userId) {
		// TODO Auto-generated method stub
		return shopcartDao.removeCart(userId);
	}

	
}
