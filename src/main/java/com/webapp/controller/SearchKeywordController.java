package com.webapp.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonSyntaxException;
import com.google.gson.internal.LinkedTreeMap;
import com.webapp.model.tour.request.SearchRequestParameter;
import com.webapp.model.tour.response.Body;
import com.webapp.model.tour.response.Items;
import com.webapp.model.tour.response.Response;
import com.webapp.model.tour.response.ResponseMessage;
import com.webapp.service.TourService;

@Controller
@RequestMapping(value="/tour")
public class SearchKeywordController {
	
	static Log log = LogFactory.getLog(SearchKeywordController.class);
	
	@Autowired
	TourService tour;
	
	@RequestMapping(value="searchkeyword", method=RequestMethod.GET)
	@ResponseBody
	public ResponseMessage searchKeyword(SearchRequestParameter request) {
		log.info("#############################################");
		log.info("searchKeyword()...");
		log.info("#############################################");
		ResponseMessage msg = tour.callapi(request.getUrl());
		
		return msg;
	}
	
}
