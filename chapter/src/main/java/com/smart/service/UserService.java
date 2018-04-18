package com.smart.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smart.dao.UserDao;
import com.smart.domain.User;

@Service
public class UserService {
	@Autowired
	private UserDao userDao;
	
	public User findUserById(int id){
		return userDao.findUserById(id);
	}
}
