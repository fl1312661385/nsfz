package com.bysj.work.nsfz.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.bysj.work.nsfz.model.Product;

public interface ProductDao {

	Product getProductInformation(Integer productId);

	List<Product> getKindofProduct(Integer type);

	List<Product> getAllProduct();

	List<Product> searchproduct(@Param("title")String title);

	Product getOneproduct(int productId);

	

	

}
