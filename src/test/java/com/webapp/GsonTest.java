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
import com.google.gson.JsonSyntaxException;
import com.webapp.model.User;
import com.webapp.model.tour.Items;
import com.webapp.model.tour.ResponseMessage;
import com.webapp.model.tour.ResponseMessage2;

public class GsonTest {

	@Test
	public void test() throws IOException {
		Gson g = new GsonBuilder().create();
//		String url = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/searchKeyword?keyword=hotel&numOfRows=20&pageNo=1&_type=json&MobileOS=ETC&MobileApp=Emp&ServiceKey=sA7tgy37XyQzBU2fPZpZw%2BGKNlR0BPdgP2RhAvNrw4ls2so%2F%2BgeLDAT8AHJO6CacIlHvKIfubhwPjiDXpy%2B7%2Fw%3D%3D&keyword=사찰";
		String url = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/searchKeyword?numOfRows=20&pageNo=1&_type=json&MobileOS=ETC&MobileApp=Emp&ServiceKey=sA7tgy37XyQzBU2fPZpZw%2BGKNlR0BPdgP2RhAvNrw4ls2so%2F%2BgeLDAT8AHJO6CacIlHvKIfubhwPjiDXpy%2B7%2Fw%3D%3D&keyword=사찰";
		
		URL u = new URL(url);
		InputStream in = u.openStream();
		Scanner scan = new Scanner(in);
//		while(scan.hasNextLine())
//			System.out.println(scan.nextLine());
//		
		ResponseMessage rm=null;
		ResponseMessage2 rm2=null;
		try {
			rm = g.fromJson(new InputStreamReader(u.openStream()), ResponseMessage.class);
			g.toJson(rm, System.out);
		} catch (JsonSyntaxException e) {
			rm2 = g.fromJson(new InputStreamReader(u.openStream()), ResponseMessage2.class);
			g.toJson(rm2, System.out);
//			e.printStackTrace();
		}
		
	}
}

