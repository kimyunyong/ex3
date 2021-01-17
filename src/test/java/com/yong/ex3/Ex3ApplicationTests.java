package com.yong.ex3;

import java.text.SimpleDateFormat;
import java.util.List;

import org.junit.jupiter.api.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.yong.ex3.domain.UserVo;
import com.yong.ex3.service.admin.UserService;

@SpringBootTest
class Ex3ApplicationTests {
	private final Logger log = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	UserService userService;
	
	@Test
	void contextLoads() {
	}
	
	@Test
	public void insertUser() {
		
	}
	
	@Test
	public void getUserList() {
		List<UserVo> list = userService.getUserList(new UserVo());
		
		log.info("getUserList(UserVo)");
		
		SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		
		for (UserVo user : list) {
			log.info(user.getuId());
			
			String to = transFormat.format(user.getuJoinDate());
			log.info(to);
		}
		
		
		
	}
	

}
