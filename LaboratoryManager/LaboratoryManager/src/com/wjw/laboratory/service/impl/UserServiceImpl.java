package com.wjw.laboratory.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.wjw.laboratory.dao.UserDao;
import com.wjw.laboratory.entity.User;
import com.wjw.laboratory.service.UserService;

@Service("userService")
public class UserServiceImpl extends BaseServiceImpl<User> implements UserService {
	
	private UserDao userDao;
	
	@Resource 
	public void setUserDao(UserDao userDao) {
		super.setBaseDao(userDao);
		this.userDao = userDao;
	}
}
