package com.webapp.service;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonSyntaxException;
import com.google.gson.internal.LinkedTreeMap;
import com.webapp.model.tour.response.Items;
import com.webapp.model.tour.response.ResponseMessage;

@Service
public class TourService {
	static Log log = LogFactory.getLog(TourService.class);
	
	public ResponseMessage callapi(String url) {
		Gson g = new GsonBuilder().create();
		
		ResponseMessage msg= null;
		InputStream in=null;
		try {
			log.info(url);
			URL u = new URL(url);
			in = u.openStream();
			
			msg = g.fromJson(new InputStreamReader(in), ResponseMessage.class);
			log.info(msg.getResponse().getBody().getItems().getClass());
			
			Object obj = msg.getResponse().getBody().getItems();
			if (obj.getClass().equals(String.class)) {
				Items items = new Items();
				msg.getResponse().getBody().setItems(items);
			}
			else if (obj.getClass().equals(LinkedTreeMap.class)) {
				LinkedTreeMap items = (LinkedTreeMap)obj;
				
				Object item = items.get("item");
				
				if (item.getClass().equals(LinkedTreeMap.class)) {
					log.info("@@@@@@@@@");
					log.info(item);
					Items citems = new Items();

					List<Map<Object, Object>> list = new ArrayList<>();
					list.add((Map<Object, Object>)item);
					citems.setItem(list);
					msg.getResponse().getBody().setItems(citems);
				}
			}
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (JsonSyntaxException e) {
			msg = new ResponseMessage();
		}
		
		return msg;
	}
	
}
