package com.webapp;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.util.HashMap;
import java.util.Map;

import org.junit.Test;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.webapp.model.User;

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
	public void test3() {
		Gson g = new GsonBuilder().create();
		String json = "{item : {\"id\":\"100\",\"password\":\"1234\"}}";
		
		Items item = g.fromJson(json, Items.class);
		
		System.out.println(item.getItem().get("id"));
		System.out.println(item.getItem().get("password"));
		
		System.out.println(g.toJson(item));
	}
	
	@Test
	public void test4() throws FileNotFoundException {
		Gson g = new GsonBuilder().create();
		FileReader xxx = new FileReader("d:\\xxx.json");
		
		TourApi tour = g.fromJson(xxx, TourApi.class);
		
		
		System.out.println(tour.getResponse().getBody().getItems().getItem().get("agelimit"));
		System.out.println(tour.getResponse().getBody().getItems().getItem().get("placeinfo"));
				
		
		
	}

}
