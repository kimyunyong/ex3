package com.yong.ex3.service.admin;

import java.util.List;

import com.yong.ex3.domain.UserVo;

public interface UserService {
	public List<UserVo> getUserList(UserVo userVo);
	public int getUserCount();
	public UserVo getUser(UserVo userVo);
	public void updateUser(UserVo userVo);
}
