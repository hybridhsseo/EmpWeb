package com.webapp.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonSyntaxException;
import com.webapp.model.tour.request.SearchRequestParameter;
import com.webapp.model.tour.response.Body;
import com.webapp.model.tour.response.Items;
import com.webapp.model.tour.response.Response;
import com.webapp.model.tour.response.ResponseMessage;

@Controller
@RequestMapping(value="/ajax")
public class AjaxController {
	
	static Log log = LogFactory.getLog(AjaxController.class);
	
	@RequestMapping(value="single", method=RequestMethod.POST)
	@ResponseBody
	public Integer singleValue(@RequestBody Integer num) {
		log.info("#############################################");
		log.info("singleValue()... num = " + num);
		log.info("#############################################");
		
		return num;
	}
}
