package com.webapp.controller;

import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.webapp.model.User;

@Controller
@RequestMapping("/login")
public class LoginController {

	static Log log = LogFactory.getLog(LoginController.class);
	
	@ResponseBody
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String login(User user, HttpSession session) {
		log.info("#########################");
		log.info("login() POST...");
		log.info("id=" + user.getId());
		log.info("password=" + user.getPassword());
		log.info("#########################");
		
		if ("webapp".equals(user.getId()) && 
			"1234".equals(user.getPassword())) {
			// Login success
			session.setAttribute("user", user);
			return "{login : true}";
		} else {
			// Login Fail
			return "{login : false}";
		}
		
	}
	
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String logout(HttpSession session) {
		
		session.invalidate();
		
		return "login/logoutsuccess";
	}
	
	
}
