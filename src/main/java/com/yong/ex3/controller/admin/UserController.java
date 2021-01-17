package com.yong.ex3.controller.admin;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.yong.ex3.domain.PaginationInfo;
import com.yong.ex3.domain.UserVo;
import com.yong.ex3.service.admin.UserService;

@Controller
public class UserController {
	private static final Logger log = LoggerFactory.getLogger(UserController.class);
	
	@Autowired
	UserService userService;
	
	@RequestMapping(value="/admin/userMng/userList/{pageIndex}", method = RequestMethod.GET)
	public String userList(Model model, UserVo userVo) {
		System.out.println(userVo);
		PaginationInfo paginationInfo = new PaginationInfo();
		
		paginationInfo.setCurrentPageNo(userVo.getPageIndex());
		
		/*
		 * if(userVo.getSearchCnd().equals("1")){
		 * paginationInfo.setRecordCountPerPage(9999); }else
		 */
		
		paginationInfo.setRecordCountPerPage(userVo.getPageUnit());
				
		paginationInfo.setPageSize(userVo.getPageSize());
		paginationInfo.setTotalRecordCount(userService.getUserCount());	// count를 가져와서 세팅
		
		userVo.setFirstIndex(paginationInfo.getFirstRecordIndex());
		userVo.setLastIndex(paginationInfo.getLastRecordIndex());
		userVo.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());
				
		List<UserVo> getUserList = userService.getUserList(userVo);
		
		model.addAttribute("userList", getUserList);
		model.addAttribute("paginationInfo", paginationInfo);
		
		return "/admin/userMng/userList";
	}
	
	@RequestMapping(value="/admin/userMng/userView/{uId}", method = RequestMethod.GET)
	public String userView(Model model, UserVo userVo) {
		UserVo getUser = userService.getUser(userVo);
		
		model.addAttribute("user", getUser);
		
		return "/admin/userMng/userView";
	}
	
	@RequestMapping(value="/admin/userMng/userUpdate/{uId}", method = RequestMethod.GET)
	public String userUpdate(Model model, UserVo userVo) {
		UserVo getUser = userService.getUser(userVo);
		
		model.addAttribute("user", getUser);
		
		return "/admin/userMng/userUpdate";
	}
	
	@RequestMapping(value="/admin/userMng/updateUserProc", method = RequestMethod.POST)
	public String userUpdateProc(Model model, UserVo userVo) {
		userService.updateUser(userVo);
		
		return "redirect:/admin/userMng/userView/" + userVo.getuId();
	}
	
	@RequestMapping(value="/admin/userMng/updateUserProc/simpleAjax", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> userUpdateProc1(Model model, UserVo userVo) {
		Map<String, Object> result = new HashMap<String, Object>();
	
		result.put("msg", "success!");
		result.put("user", userVo);
		
		return result;
	}
}
