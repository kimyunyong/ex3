package com.yong.ex3.service.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yong.ex3.domain.User;
import com.yong.ex3.mapper.admin.UserMapper;

@Service
public class UserServiceImpl implements UserService{
	@Autowired
	UserMapper userMapper;
	
	@Override
	public List<User> getUserList() {
		
		return userMapper.getUserList();
	}
	
	
}
