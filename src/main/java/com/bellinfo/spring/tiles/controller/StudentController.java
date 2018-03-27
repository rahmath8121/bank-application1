package com.bellinfo.spring.tiles.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;
import javax.validation.Valid;

import org.apache.tiles.request.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bellinfo.spring.tiles.model.Login;
import com.bellinfo.spring.tiles.model.Registration;
import com.bellinfo.spring.tiles.service.StudentServiceImpl;

@Controller
public class StudentController {

	@Autowired
	StudentServiceImpl service;

	public void setService(StudentServiceImpl service) {
		this.service = service;
	}

	@RequestMapping(value = "/registration", method = RequestMethod.GET)
	public String getRegistration(Model model) {
		Registration reg = new Registration();
		model.addAttribute("registration", reg);
		return "registration";

	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String getLogin(Model model) {
		Login log = new Login();
		model.addAttribute("login", log);
		return "login";

	}

	@RequestMapping(value = "/registration", method = RequestMethod.POST)
	public String postStudentData(Model model, @Valid @ModelAttribute Registration reg, BindingResult bindingResult) {
		if (bindingResult.hasErrors()) {
			return "registration";
		}
		String text = "Hey " + reg.getUsername() + " Welcome";
		model.addAttribute("message", text);
		try {
			service.repMethods(reg);
		} catch (SQLException e) {
			System.out.println("User already exists");
		}
		return "success";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String getDetails(Model model, @Valid @ModelAttribute Login log, BindingResult bindingResult
			,SessionListener listen,HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if (bindingResult.hasErrors()) {
			return "login";
		}
		
		String user = log.getUsername();
		String pass = log.getPassword();
		System.out.println(user);
		System.out.println(pass);
		String var2 = service.getvalidation(log);
		HttpSession session = request.getSession(true);
		HttpSessionEvent event = new HttpSessionEvent(session);
		listen.sessionCreated(event);
		request.getSession().setMaxInactiveInterval(500);
		model.addAttribute("loginsuccess", var2);
		return "success-login";
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(Model model,SessionListener listen,HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(false);
		session.invalidate();
		HttpSessionEvent event = new HttpSessionEvent(session);
		listen.sessionDestroyed(event);
		String str = "You have been successfully logged out";
		model.addAttribute("message", str);
		return "Logout";
	}
	
	

	
}
