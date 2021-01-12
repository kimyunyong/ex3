package com.yong.ex3.mapper.admin;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.yong.ex3.domain.User;

@Mapper
public interface UserMapper {
    public List<User> getUserList();
    
}