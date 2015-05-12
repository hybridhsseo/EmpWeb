package com.webapp.model.tour.response;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Items {
//	Map[] item = new HashMap[0];
	List<Map<Object, Object>> item = new ArrayList<>();

	public List<Map<Object, Object>> getItem() {
		return item;
	}

	public void setItem(List<Map<Object, Object>> item) {
		this.item = item;
	}
	
//	public Map[] getItem() {
//		return item;
//	}
//
//	public void setItem(Map[] item) {
//		this.item = item;
//	}

}
