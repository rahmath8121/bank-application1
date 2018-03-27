package com.bellinfo.spring.tiles.model;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

public class Login {
	@NotEmpty
	@NotNull
	@Size(min = 4, max = 10)
	String username;
	@NotEmpty
	@NotNull
	String password;

	public Login(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}

	public Login() {
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

	public String toString() {
		return "[" + " The username is: " + username + " The password is: " + password + "]";
	}

}
