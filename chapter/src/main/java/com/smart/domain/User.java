package com.smart.domain;

import java.util.Date;

public class User {

	private int id;
	private String username;
	private String password;
	private String lastip;
	private Date lastvisit;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public String getLastip() {
		return lastip;
	}
	public void setLastip(String lastip) {
		this.lastip = lastip;
	}
	public Date getLastvisit() {
		return lastvisit;
	}
	public void setLastvisit(Date lastvisit) {
		this.lastvisit = lastvisit;
	}
	
	
	
}
