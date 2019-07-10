package com.bysj.work.nsfz.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bysj.work.nsfz.dao.UserDao;
import com.bysj.work.nsfz.model.User;
import com.bysj.work.nsfz.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDao userDao;
	@Override
	public User find(User user) {
		// TODO Auto-generated method stub
		return userDao.find(user);
	}
	public void insert(User user) {
		userDao.insert(user);
		
	}
	public User getUserById(int userId) {
		// TODO Auto-generated method stub
		return userDao.getUserById(userId);
	}
	@Override
	public void changeUserById(int userId, String userName, String mobile) {
		// TODO Auto-generated method stub
		userDao.changeUserById(userId,userName,mobile);
	}
	@Override
	public User checkMobile(String mobile) {
		// TODO Auto-generated method stub
		return userDao.checkMobile(mobile);
	}
	@Override
	public void changePasswordByPhone(String phone, String password) {
		// TODO Auto-generated method stub
		userDao.changePasswordByPhone(phone,password);
	}
	

}
