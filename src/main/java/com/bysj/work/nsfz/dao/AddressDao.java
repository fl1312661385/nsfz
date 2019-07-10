package com.bysj.work.nsfz.dao;

import org.apache.ibatis.annotations.Param;

import com.bysj.work.nsfz.model.Address;

public interface AddressDao {

	Address getAddressById(int userId);

	void changeAddressById(@Param("userId")int userId,@Param("address") String address,@Param("postcode") Integer postcode);

	void insertById(@Param("userId")int userId, @Param("address")String address, @Param("postcode")Integer postcode);

}
