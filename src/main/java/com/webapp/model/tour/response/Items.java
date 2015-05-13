package com.webapp.model.tour.response;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Items {
	List<Map<Object, Object>> item = new ArrayList<>();

	public List<Map<Object, Object>> getItem() {
		return item;
	}

	public void setItem(List<Map<Object, Object>> item) {
		this.item = item;
	}
}
