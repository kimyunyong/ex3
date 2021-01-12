package com.yong.ex3.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
/*import org.springframework.security.config.annotation.web.builders.HttpSecurity;*/
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;

@Configuration
@EnableGlobalMethodSecurity(securedEnabled = true, prePostEnabled = true)
@EnableWebSecurity
public class WebSecurityConfig {
	/*
	 * @Override protected void configure(HttpSecurity http) throws Exception {
	 * 
	 * }
	 */
}