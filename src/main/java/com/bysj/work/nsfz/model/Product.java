package com.bysj.work.nsfz.model;

public class Product {
	private Integer productId;
	private String productImg;
	private String productName;
	private String productAddress;
	private String description;
	private float tprice;
	private float fprice;
	private Integer stock;
	private Integer type;
	
	public String getProductImg() {
		return productImg;
	}
	public void setProductImg(String productImg) {
		this.productImg = productImg;
	}
	public Integer getType() {
		return type;
	}
	public void setType(Integer type) {
		this.type = type;
	}
	public Integer getProductId() {
		return productId;
	}
	public void setProductId(Integer productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductAddress() {
		return productAddress;
	}
	public void setProductAddress(String productAddress) {
		this.productAddress = productAddress;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public float getTprice() {
		return tprice;
	}
	public void setTprice(float tprice) {
		this.tprice = tprice;
	}
	public float getFprice() {
		return fprice;
	}
	public void setFprice(float fprice) {
		this.fprice = fprice;
	}
	public Integer getStock() {
		return stock;
	}
	public void setStock(Integer stock) {
		this.stock = stock;
	}
	
}
