package com.webapp;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

import org.junit.Test;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.webapp.model.User;
import com.webapp.model.tour.Items;
import com.webapp.model.tour.ResponseMessage;

public class GsonTest {

	@Test
	public void test1() {
		Gson g = new GsonBuilder().create();
		
		System.out.println(g.toJson("hello"));
		System.out.println(g.toJson(1900.));
		System.out.println(g.toJson(true));
		
		User u = new User();
		u.setId("100");
		u.setPassword("1234");
		System.out.println(g.toJson(u));
		
		Map<Object, Object> map = new HashMap<Object, Object>();
		map.put("code", 123);
		map.put("name", "한국관광공사");
		
		System.out.println(g.toJson(map));
		
	}
	
	@Test
	public void test2() {
		Gson g = new GsonBuilder().create();
		String json = "{\"id\":\"100\",\"password\":\"1234\"}";
		
		Map<Object, Object> map = g.fromJson(json, Map.class);
		
		System.out.println(map.get("id"));
		System.out.println(map.get("password"));
		
	}
	@Test
	public void test3() throws IOException {
		Gson g = new GsonBuilder().create();
		String url = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/searchKeyword?keyword=hotel&numOfRows=20&pageNo=1&_type=json&MobileOS=ETC&MobileApp=Emp&ServiceKey=sA7tgy37XyQzBU2fPZpZw%2BGKNlR0BPdgP2RhAvNrw4ls2so%2F%2BgeLDAT8AHJO6CacIlHvKIfubhwPjiDXpy%2B7%2Fw%3D%3D&keyword=사찰";
		
		URL u = new URL(url);
		InputStream in = u.openStream();
		Scanner scan = new Scanner(in);
		while(scan.hasNextLine())
			System.out.println(scan.nextLine());
		
		
		ResponseMessage rm = g.fromJson(new InputStreamReader(u.openStream()), ResponseMessage.class);
		
//		System.out.println(g.toJson(item));
		g.toJson(rm, System.out);
	}
	
}
