package com.yong.ex3.service.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yong.ex3.domain.UserVo;
import com.yong.ex3.mapper.admin.UserMapper;

@Service
public class UserServiceImpl implements UserService{
	@Autowired
	UserMapper userMapper;
	
	@Override
	public List<UserVo> getUserList(UserVo userVo) {
		
		return userMapper.getUserList(userVo);
	}

	@Override
	public int getUserCount() {

		return userMapper.getUserCount();
	}

	@Override
	public UserVo getUser(UserVo userVo) {

		return userMapper.getUser(userVo);
	}

	@Override
	public void updateUser(UserVo userVo) {
		userMapper.updateUser(userVo);
	}
	
	
}
