package com.yong.ex3.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yong.ex3.domain.User;
import com.yong.ex3.service.admin.UserService;

@Controller
public class UserController {
	
	@Autowired
	UserService userService;

	@RequestMapping(value="/admin/userMng/userList", method = RequestMethod.GET)
	public String userList(Model model) {
		
		List<User> getUserList = userService.getUserList();
		
		model.addAttribute("userList", getUserList);
		
		return "/admin/userMng/userList";
	}
}
