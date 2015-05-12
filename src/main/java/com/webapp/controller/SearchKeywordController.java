package com.webapp.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
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
@RequestMapping(value="/tour")
public class SearchKeywordController {
	
	static Log log = LogFactory.getLog(SearchKeywordController.class);
	
	@RequestMapping(value="searchkeyword", method=RequestMethod.GET)
	@ResponseBody
	public ResponseMessage searchKeyword(SearchRequestParameter request) {
		log.info("#############################################");
		log.info("searchKeyword()...");
		log.info("#############################################");
		
		Gson g = new GsonBuilder().create();
		
		ResponseMessage msg= null;
		Items items = null;
		InputStream in=null;
		try {
			log.info(request.getUrl());
			URL u = new URL(request.getUrl());
			in = u.openStream();
			msg = g.fromJson(new InputStreamReader(in), ResponseMessage.class);
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (JsonSyntaxException e) {
			msg = new ResponseMessage();
//			msg.setResponse();
		}
		
		return msg;
	}
	
}
