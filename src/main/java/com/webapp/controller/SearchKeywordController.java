package com.webapp.controller;

import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Scanner;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.webapp.model.tour.request.RequestParameter;
import com.webapp.model.tour.response.ResponseMessage;

@Controller
@RequestMapping(value="/tour")
public class SearchKeywordController {
	
	static Log log = LogFactory.getLog(SearchKeywordController.class);
	
	String url = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/searchKeyword";
	@RequestMapping(value="searchkeyword", method=RequestMethod.GET)
	@ResponseBody
	public String searchKeyword(RequestParameter request) {
		log.info("#############################################");
		log.info("searchKeyword()...");
		log.info("#############################################");
		
		Gson g = new GsonBuilder().create();
		
		try {
			String makeurl = url + "?" + request.getQueryString() + "&keyword=seoul";
			log.info(makeurl);
			URL u = new URL(makeurl);
			InputStream in = u.openStream();
			Scanner scan = new Scanner(in);
			while(scan.hasNextLine())
				log.info(scan.nextLine());
					
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
//		return request;
		return request.getQueryString();
	}
	
}
