package com.bysj.work.nsfz.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.bysj.work.nsfz.model.ShopCart;
import com.bysj.work.nsfz.model.UserAddress;
import com.bysj.work.nsfz.model.UserCart;

public interface ShopCartDao {

	UserAddress getUserAddress(Integer userId);

	void addoneproduct(@Param("userId")Integer userId, @Param("productId")Integer productId,@Param("productName")String productName, @Param("quantity")Integer productcount);

	ShopCart find(@Param("userId")int userId,@Param("productId") Integer productId);

	void changequantity(@Param("userId")int userId, @Param("productId")int productId, @Param("nowproductcount")int nowproductcount);

	

	void deletecart(@Param("userId")int userId, @Param("productId")int productId);

	List<UserCart> getCartInformation(int userId);

	int removeCart(@Param("userId")int userId);



}
