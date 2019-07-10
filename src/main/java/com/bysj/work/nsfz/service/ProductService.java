package com.bysj.work.nsfz.service;

import java.util.List;

import com.bysj.work.nsfz.model.Product;

public interface ProductService {

	
	public List<Product> getKindofProduct(Integer type);
	
	
	public Product getProductInformation(Integer productId);
	
	
	List<Product> getAllProduct();


	public List<Product> searchproduct(String title);


	public Product getOneproduct(int productId);


	
}
