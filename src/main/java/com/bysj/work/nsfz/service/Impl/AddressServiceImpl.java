package com.bysj.work.nsfz.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bysj.work.nsfz.dao.AddressDao;
import com.bysj.work.nsfz.dao.CommentDao;
import com.bysj.work.nsfz.model.Address;
import com.bysj.work.nsfz.service.AddressService;
@Service("addressService")
public class AddressServiceImpl implements AddressService {
	@Autowired
	private AddressDao addressDao;
	@Override
	public Address getAddressById(int userId) {
		// TODO Auto-generated method stub
		return addressDao.getAddressById(userId);
	}
	@Override
	public void changeAddressById(int userId, String address, Integer postcode) {
		// TODO Auto-generated method stub
		addressDao.changeAddressById(userId,address,postcode);
	}
	@Override
	public void insertById(int userId, String address, Integer postcode) {
		// TODO Auto-generated method stub
		addressDao.insertById(userId,address,postcode);
	}

}
