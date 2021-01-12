package com.yong.ex3.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {
	@RequestMapping(value= "/login")
	public String new_login() {
		
		return "/login/login";
	}
}
