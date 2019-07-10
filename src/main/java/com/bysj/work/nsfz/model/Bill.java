package com.bysj.work.nsfz.model;

public class Bill {
	/**
	*@author fengliang
	*2019年4月9日
	*com.bysj.work.nsfz.model
	*/
	private Integer billId;
	private Integer userId;
	private Integer orderId;
	private String creatTime;
	public Integer getBillId() {
		return billId;
	}
	public void setBillId(Integer billId) {
		this.billId = billId;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public Integer getOrderId() {
		return orderId;
	}
	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
	}
	public String getCreatTime() {
		return creatTime;
	}
	public void setCreatTime(String creatTime) {
		this.creatTime = creatTime;
	}
	@Override
	public String toString() {
		return "Bill [billId=" + billId + ", userId=" + userId + ", orderId=" + orderId + ", creatTime=" + creatTime
				+ "]";
	}
	
}
