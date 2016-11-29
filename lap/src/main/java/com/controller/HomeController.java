package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class HomeController {
	@RequestMapping("/")
	public String showMessage()
			 {
		return "index";
	}
	@RequestMapping("category")
	public String showMessage1()
			 {
		return "category";
	}
	@RequestMapping("contact")
	public String showMessage2()
			 {
		return "contact";
	}
	@RequestMapping("signup")
	public String showMessage3()
			 {
		return "signup";
	}
	@RequestMapping("loginn")
	public String showMessage4()
			 {
		return "loginn";
	}
	
}