package com.yong.ex3.mapper.admin;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.yong.ex3.domain.UserVo;

@Mapper
public interface UserMapper {
    public List<UserVo> getUserList(UserVo userVo);
    public int getUserCount();
    public UserVo getUser(UserVo userVo);
    public void updateUser(UserVo userVo);
}