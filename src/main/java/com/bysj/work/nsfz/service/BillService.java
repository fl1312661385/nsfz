package com.bysj.work.nsfz.service;

import java.util.List;

import com.bysj.work.nsfz.model.Bill;
import com.bysj.work.nsfz.model.BillOrder;

public interface BillService {

	void insert(Bill bill);

	List<BillOrder> getAllBill(int userId, String xlist);

	List<String> getBillBycreatTime(int userId);

	void del(Integer orderId);

	void delBybillId(Integer billId);

	

}
