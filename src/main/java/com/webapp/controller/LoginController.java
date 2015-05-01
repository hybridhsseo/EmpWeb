package com.webapp.controller;

import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.webapp.model.LoginStatus;
import com.webapp.model.User;

@Controller
@RequestMapping("/login")
public class LoginController {

	static Log log = LogFactory.getLog(LoginController.class);
	
	@ResponseBody
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public LoginStatus login(@RequestBody User user, HttpSession session) {
		log.info("#########################");
		log.info("login() POST...");
		log.info("id=" + user.getId());
		log.info("password=" + user.getPassword());
		log.info("#########################");
		
		LoginStatus result = new LoginStatus();
		
		if ("webapp".equals(user.getId()) && 
			"1234".equals(user.getPassword())) {
			// Login success
			session.setAttribute("user", user);
			result.setStatus(true);
			
		} else {
			// Login Fail
			result.setStatus(false);
		}

		result.setUser(user);
		
		return result;
		
	}
	
	@ResponseBody
	@RequestMapping(value="/logincheck", method=RequestMethod.GET)
	public LoginStatus logcheck(HttpSession session) {
		log.info("#########################");
		log.info("logincheck() GET...");
		log.info("#########################");
		
		User user = (User)session.getAttribute("user");
		
		LoginStatus status = new LoginStatus();
		if (user == null)
			status.setStatus(false);
		else
			status.setStatus(true);
		
		status.setUser(user);
		
		return status;
	}
	
	@ResponseBody
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public LoginStatus logout(HttpSession session) {
		log.info("#########################");
		log.info("logout() GET...");
		log.info("#########################");
		
		session.invalidate();
		
		LoginStatus status = new LoginStatus();
		status.setStatus(false);
		
		return status;
	}
	
	
}
