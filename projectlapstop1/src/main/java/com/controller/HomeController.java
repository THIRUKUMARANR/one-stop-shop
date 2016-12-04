package com.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.model.service.CategoryService;
import com.model.service.ProductService;
import com.model.service.RegisterService;

@Controller
public class HomeController {
	@RequestMapping(value = { "/", "/index" })
	public String lapstop() {
		System.out.println("in controller");
		ModelAndView m = new ModelAndView("index");

		return "index";
	}

	@RequestMapping("/loginn")
	public String lapstop1() {
		return "loginn";
	}

	@Autowired
	RegisterService registerService;

	@RequestMapping("/userDetails")
	public String lapstop2(Map<String, Object> map) {
		map.put("registerList", registerService.getAllRegister());

		return "userDetails";
	}

	@Autowired
	ProductService productService;

	@RequestMapping("/productDetails")
	public String lapstop4(Map<String, Object> map) {
		map.put("productList", productService.getAllProduct());

		return "productDetails";
	}

	@Autowired
	CategoryService categoryService;

	@RequestMapping("/categoryDetails")
	public String lapstop5(Map<String, Object> map) {

		map.put("categoryList", categoryService.getAllCategory());

		return "index";
	}

	@RequestMapping("/contact")
	public String lapstop4() {
		return "contact";
	}
	@RequestMapping("/topselling")
	public String lapstop5() {
		return "topselling";
	}
	@RequestMapping("/gaming")
	public String lapstop6() {
		return "gaming";
	}
	@RequestMapping("/exclusive")
	public String lapstop7() {
		return "exclusive";
	}

	@RequestMapping("/category1")
	public String lapstop6(Map<String, Object> map) {
		map.put("productList", productService.getAllProduct());
		return "category1";
	}

	@RequestMapping("/login")
	public ModelAndView getLoginForm(@RequestParam(required = false) String authfailed, String logout, String denied) {
		String message = "";
		if (authfailed != null) {
			message = "Invalid username of password, try again !";
		} else if (logout != null) {
			message = "Logged Out successfully, login again to continue !";
		} else if (denied != null) {
			message = "Access denied for this user !";
		}
		return new ModelAndView("login", "message", message);
	}

	@RequestMapping("/user")
	public String geUserPage() {
		return "/user";
	}

	@RequestMapping("/admin")
	public String geAdminPage() {
		return "/admin";
	}

	@RequestMapping("/403page")
	public String ge403denied() {
		return "redirect:login?denied";
	}
}
