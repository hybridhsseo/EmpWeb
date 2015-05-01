package com.webapp.model;

public class LoginResult {
	Boolean status = false;
	Boolean loginstatus = false;
	User user;

	public Boolean getStatus() {
		return status;
	}

	public void setStatus(Boolean status) {
		this.status = status;
	}

	public Boolean getLoginstatus() {
		return loginstatus;
	}

	public void setLoginstatus(Boolean loginstatus) {
		this.loginstatus = loginstatus;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	

}
