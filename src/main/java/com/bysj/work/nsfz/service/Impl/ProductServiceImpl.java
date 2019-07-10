package com.bysj.work.nsfz.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import com.bysj.work.nsfz.dao.ProductDao;
import com.bysj.work.nsfz.model.Product;
import com.bysj.work.nsfz.service.ProductService;
import com.bysj.work.nsfz.service.UserService;


@Service("productService")
public class ProductServiceImpl implements ProductService{
	@Autowired
	private ProductDao productDao;

	public Product getProductInformation(Integer productId) {
		
		// TODO Auto-generated method stub
		return productDao.getProductInformation(productId);
	}

	@Override
	public List<Product> getKindofProduct(Integer type) {
		// TODO Auto-generated method stub
		return productDao.getKindofProduct(type);
	}
	/*@Cacheable(value="Allproduct")*/
	public List<Product> getAllProduct() {
		// TODO Auto-generated method stub
		return productDao.getAllProduct();
	}

	public List<Product> searchproduct(String title) {
		// TODO Auto-generated method stub
		return productDao.searchproduct(title);
	}

	@Override
	public Product getOneproduct(int productId) {
		// TODO Auto-generated method stub
		return productDao.getOneproduct(productId);
	}

	

	
}
