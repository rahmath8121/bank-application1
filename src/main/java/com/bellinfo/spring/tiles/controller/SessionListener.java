package com.bellinfo.spring.tiles.controller;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


@Component
public class SessionListener implements HttpSessionListener {
	
	@Autowired
	HttpSession session;
	
	public void setSession(HttpSession session) {
		this.session = session;
	}

	public void sessionCreated(HttpSessionEvent event) {
		System.out.println("session created");
		
	}

	public void sessionDestroyed(HttpSessionEvent event) {
		System.out.println("session destroyed");
	}
}
