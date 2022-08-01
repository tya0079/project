package com.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@RequestMapping("/")
	public String home() {
		return "home";
	}
	
	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	
	@RequestMapping("/detail")
	public String detail() {
		return "detail";
	}
	@RequestMapping("/daterangePicker")
	public String index() {
		return "daterangePicker";
	}
}
