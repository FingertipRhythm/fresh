package com.control;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.pojo.User;
import com.service.UserService;

@Controller
@RequestMapping("/user")
public class UserControl {

	@Autowired
	private UserService us;
	/*
	 * 用户注册
	 */
	@RequestMapping(value="reg",method=RequestMethod.POST)
	public String regist(User user,HttpSession session) {
		System.out.println("注册控制器");
		us.regist(user);
		//注册成功跳转到登录
		session.setAttribute("user", user);
		return "regist-1";
	}
	
	@RequestMapping(value="lg",method=RequestMethod.POST)
	public String login(User user,HttpSession session) {
	User u = us.login(user);
	if(session.getAttribute("user")!=null) {
		u=(User) session.getAttribute("user");
	}
	if(u!=null) {
		session.setAttribute("myuser", u);
		return "index";
	}else {
		return "login";
	}
	}
	
}
