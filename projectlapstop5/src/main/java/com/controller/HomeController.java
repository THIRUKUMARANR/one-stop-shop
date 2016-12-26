package com.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


import com.model.entity.Product;
import com.model.service.CategoryService;
import com.model.service.ProductService;
import com.model.service.RegisterService;

@Controller
public class HomeController {
	@RequestMapping(value = { "/", "/index" })
	public String ShowMessgae(Map<String, Object> map) {
		System.out.println("in controller");
		map.put("categoryList", categoryService.getAllCategory());
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
	
	@RequestMapping("/viewDetails")
	public String viewDetail(@RequestParam("pdt1") int productId, Map<String, Object> map,Product product) {
		map.put("categoryList", categoryService.getAllCategory());
		Product p = productService.getProduct(productId);
		map.put("product", p);
		return "viewDetails";
	}

	@RequestMapping("/category1")
	public String lapstop6(Map<String, Object> map) {
		map.put("productList", productService.getAllProduct());
		return "category1";
	}
	@RequestMapping("/gaming")
	public ModelAndView showMessage3(Map<String, Object> map) {
		map.put("categoryList", categoryService.getAllCategory());
		
		return new ModelAndView("gaming", "productList", productService.getAllProduct());

	}
	@RequestMapping("/topselling")
	public ModelAndView showMessage5(Map<String, Object> map) {
		map.put("categoryList", categoryService.getAllCategory());
		
		return new ModelAndView("topselling", "productList", productService.getAllProduct());

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
	@RequestMapping("/allproduct")
	public String view(@RequestParam("pdt") String id, Map<String, Object> map) {
		System.out.println("allproduct");
		map.put("productList", productService.getAllProductfromCategory(id));
		map.put("categoryList", categoryService.getAllCategory());
		return "allproduct";
	}
	@RequestMapping("/sample")
	public String ang()
	{
		return "sample";
	}
	@RequestMapping("/viewall")
	public String view(Map<String, Object> map)
	{
		map.put("categoryList", categoryService.getAllCategory());
		return "viewall";
	}
	
	@RequestMapping("/angularview")
	public @ResponseBody List<Product>pro()
	{
		
		return productService.getAllProduct();
	}
}
