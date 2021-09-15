package com.pipe.model;

import javax.persistence.Column;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "usertable")
public class UserTable {
	
	@Id
	@Column(name = "username")
    private String username;

	@Column(name = "password")
	private String password;

	@Column(name = "usertype")
	private String userType;

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

	public UserTable() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	

	

}
