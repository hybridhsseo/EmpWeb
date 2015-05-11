package com.webapp.model.tour.request;

import java.util.Map;

public class RequestParameter {
	Integer numOfRows = 50;
	Integer pageNo = 1;
	String mobileOS = "AND";
	String mobileApp = "EmpWeb";
	String _type = "json";
	String serviceKey = "sA7tgy37XyQzBU2fPZpZw%2BGKNlR0BPdgP2RhAvNrw4ls2so%2F%2BgeLDAT8AHJO6CacIlHvKIfubhwPjiDXpy%2B7%2Fw%3D%3D";

	String keyword;
	
	public String getQueryString() {
		String queryString="";
		queryString += "numOfRows=" + numOfRows;
		queryString += "&" + "pageNo=" + pageNo;
		queryString += "&" + "MobileOS=" + mobileOS;
		queryString += "&" + "MobileApp=" + mobileApp;
		queryString += "&" + "_type=" + _type;
		queryString += "&" + "ServiceKey=" + serviceKey;
		
		return queryString;
	}
	

	public Integer getNumOfRows() {
		return numOfRows;
	}

	public void setNumOfRows(Integer numOfRows) {
		this.numOfRows = numOfRows;
	}

	public Integer getPageNo() {
		return pageNo;
	}

	public void setPageNo(Integer pageNo) {
		this.pageNo = pageNo;
	}

	public String getMobileOS() {
		return mobileOS;
	}

	public void setMobileOS(String mobileOS) {
		this.mobileOS = mobileOS;
	}

	public String getMobileApp() {
		return mobileApp;
	}

	public void setMobileApp(String mobileApp) {
		this.mobileApp = mobileApp;
	}

	public String get_type() {
		return _type;
	}

	public void set_type(String _type) {
		this._type = _type;
	}

	public String getServiceKey() {
		return serviceKey;
	}

	public void setServiceKey(String serviceKey) {
		this.serviceKey = serviceKey;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	
	
	
}
