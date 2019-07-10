package com.bysj.work.nsfz.dao;

import org.apache.ibatis.annotations.Param;

import com.bysj.work.nsfz.model.User;

public interface UserDao {

	User find(User user);

	void insert(User user);

	User getUserById(int userId);

	void changeUserById(@Param("userId")int userId,@Param("userName") String userName, @Param("mobile")String mobile);

	User checkMobile(String mobile);

	void changePasswordByPhone(@Param("mobile")String phone, @Param("password")String password);

}
