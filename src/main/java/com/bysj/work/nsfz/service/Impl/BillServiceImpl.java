package com.bysj.work.nsfz.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bysj.work.nsfz.dao.BillDao;
import com.bysj.work.nsfz.model.Bill;
import com.bysj.work.nsfz.model.BillOrder;
import com.bysj.work.nsfz.service.BillService;
@Service
public class BillServiceImpl implements BillService {
	/**
	*@author fengliang
	*2019年4月9日
	*com.bysj.work.nsfz.service.Impl
	*/
	@Autowired
	private BillDao billdao;
	
	@Override
	public void insert(Bill bill) {
		// TODO Auto-generated method stub
		billdao.insert(bill);
	}

	@Override
	public List<BillOrder> getAllBill(int userId, String xlist) {
		return billdao.getAllBill(userId,xlist);
	}

	@Override
	public List<String> getBillBycreatTime(int userId) {
		// TODO Auto-generated method stub
		return billdao.getBillBycreatTime(userId);
	}

	@Override
	public void del(Integer orderId) {
		// TODO Auto-generated method stub
		 billdao.del(orderId);
	}

	@Override
	public void delBybillId(Integer billId) {
		// TODO Auto-generated method stub
		billdao.delBybillId(billId);
	}

	
}
