package com.bysj.work.nsfz.service;

import com.bysj.work.nsfz.model.Address;

public interface AddressService {

	Address getAddressById(int userId);

	void changeAddressById(int userId, String address, Integer postcode);

	void insertById(int userId, String address, Integer postcode);

}
