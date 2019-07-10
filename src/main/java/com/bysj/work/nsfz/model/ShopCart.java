package com.bysj.work.nsfz.model;

public class ShopCart {

	private Integer userId;
	private Integer productId;
	private Integer quantity;
	private String productName;
	private Integer isDelete;
	
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public Integer getProductId() {
		return productId;
	}
	public void setProductId(Integer productId) {
		this.productId = productId;
	}
	public Integer getQuantity() {
		return quantity;
	}
	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}
	
	public Integer getIsDelete() {
		return isDelete;
	}
	public void setIsDelete(Integer isDelete) {
		this.isDelete = isDelete;
	}
	@Override
	public String toString() {
		return "ShopCart [userId=" + userId + ", productId=" + productId + ", quantity=" + quantity + ", productName="
				+ productName + ", isDelete=" + isDelete + "]";
	}

	
}
