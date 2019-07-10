package com.bysj.work.nsfz.model;

public class Order {
	private Integer orderId;
	private Integer userId;
	private String userName;
	private String address;
	private Integer postcode;
	private String mobile;
	private String productImg;
	private String productName;
	private double orderPrice;
	private Integer quantity;
	private Integer orderCode;
	private Integer orderType;
	/*0表示未付款，1表示已下单，2表示已发送，3表示交易成功*/
	
	public Integer getUserId() {
		return userId;
	}
	public String getProductImg() {
		return productImg;
	}
	public void setProductImg(String productImg) {
		this.productImg = productImg;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public double getOrderPrice() {
		return orderPrice;
	}
	public void setOrderPrice(double orderPrice) {
		this.orderPrice = orderPrice;
	}
	public Integer getQuantity() {
		return quantity;
	}
	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}
	public Integer getOrderCode() {
		return orderCode;
	}
	public void setOrderCode(Integer orderCode) {
		this.orderCode = orderCode;
	}
	public Integer getOrderId() {
		return orderId;
	}
	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Integer getPostcode() {
		return postcode;
	}
	public void setPostcode(Integer postcode) {
		this.postcode = postcode;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public Integer getOrderType() {
		return orderType;
	}
	public void setOrderType(Integer orderType) {
		this.orderType = orderType;
	}
	@Override
	public String toString() {
		return "Order [orderId=" + orderId + ", userId=" + userId + ", userName=" + userName + ", address=" + address
				+ ", postcode=" + postcode + ", mobile=" + mobile + ", productImg=" + productImg + ", productName="
				+ productName + ", orderPrice=" + orderPrice + ", quantity=" + quantity + ", orderCode=" + orderCode
				+ ", orderType=" + orderType + "]";
	}
	
}
