package com.webapp.controller;

import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.webapp.model.LoginResult;
import com.webapp.model.User;

@Controller
@RequestMapping("/login")
public class LoginController {

	static Log log = LogFactory.getLog(LoginController.class);
	
	@ResponseBody
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public LoginResult login(@RequestBody User user, HttpSession session) {
		log.info("#########################");
		log.info("login() POST...");
		log.info("id=" + user.getId());
		log.info("password=" + user.getPassword());
		log.info("#########################");
		
		LoginResult result = new LoginResult();
		
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
	public LoginResult logcheck(HttpSession session) {
		
		User user = (User)session.getAttribute("user");
		
		LoginResult result = new LoginResult();
		if (user == null)
			result.setStatus(false);
		else
			result.setStatus(true);
		
		result.setUser(user);
		
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public LoginResult logout(HttpSession session) {
		
		session.invalidate();
		
		LoginResult result = new LoginResult();
		result.setStatus(true);
		
		return result;
	}
	
	
}
