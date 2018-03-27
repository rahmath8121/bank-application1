package com.bellinfo.spring.tiles.model;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

public class Registration {

	@NotEmpty
	@NotNull
	@Size(min = 4, max = 10)
	String username;
	@NotEmpty
	@NotNull
	String password;
	@NotEmpty
	@NotNull
	String email;

	
	public Registration(String username, String password, String email) {
		super();
		this.username = username;
		this.password = password;
		this.email = email;
	}

	
	
	public Registration() {
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



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}

}
