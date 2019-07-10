package com.bysj.work.nsfz.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.bysj.work.nsfz.model.Bill;
import com.bysj.work.nsfz.model.BillOrder;

public interface BillDao {

	void insert(Bill bill);

	List<String> getBillBycreatTime(int userId);
	
	List<BillOrder> getAllBill(@Param("userId")int userId,@Param("creatTime") String xlist);

	void del(Integer orderId);

	void delBybillId(Integer billId);

	

}
