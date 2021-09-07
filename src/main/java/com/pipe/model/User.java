package com.pipe.model;

import javax.persistence.Entity;
import javax.persistence.Id;


import org.springframework.stereotype.Component;

@Entity
@Component
public class User {
	@Id
	private String username;
	private String password;
	private String userType;
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public User(String username, String password, String userType) {
		super();
		this.username = username;
		this.password = password;
		this.userType = userType;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUserType() {
		return userType;
	}
	public void setUserType(String userType) {
		this.userType = userType;
	}
	
	
	
	
	
}
