package com.bysj.work.nsfz.service;

import com.bysj.work.nsfz.model.User;

public interface UserService {

	User find(User user);
	public void insert(User user);
	User getUserById(int userId);
	void changeUserById(int userId, String userName, String mobile);
	User checkMobile(String mobile);
	void changePasswordByPhone(String phone, String password);
	
}
