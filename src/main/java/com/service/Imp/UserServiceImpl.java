package com.service.Imp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.UserDao;
import com.pojo.User;
import com.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userdao;
	
	public int regist(User user) {
		// TODO Auto-generated method stub
		return userdao.regist(user);
	}

	public User login(User user) {
		// TODO Auto-generated method stub
		return userdao.login(user);
	}

}
