package com.demo.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.dao.UserDao;
import com.demo.model.Users;
import com.demo.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDao userDao;

	public Users saveOrUpdateUsers(Users users) {
		return userDao.saveOrUpdateUsers(users);
	}

	
}


