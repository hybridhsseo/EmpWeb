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
import com.webapp.model.tour.request.SearchRequestParameter;
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
		
		ResponseMessage msg=null;
		try {
			log.info(request.getUrl());
			URL u = new URL(request.getUrl());
			InputStream in = u.openStream();
//			Scanner scan = new Scanner(in);
//			while(scan.hasNextLine())
//				log.info(scan.nextLine());
			msg = g.fromJson(new InputStreamReader(in), ResponseMessage.class);
					
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
//		return request;
		return msg;
	}
	
}
