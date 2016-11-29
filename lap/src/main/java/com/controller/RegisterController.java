package com.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.model.entity.Register;
import com.model.service.RegisterService;





@Controller
public class RegisterController {
	@Autowired
	RegisterService registerService;
	
	@ModelAttribute("register")
	public Register bind()
	{
		return new Register();
	}
	@RequestMapping("/register")
	public String setupregForm(Map<String, Object> map){
		/*Register register=new Register();
		map.put("register", register);
		map.put("registerList", registerService.getAllRegister());*/
		return "register";
	}

	@RequestMapping(value="/register.do", method=RequestMethod.POST)
	public String doregActions(@ModelAttribute(value="register") Register register, /*BindingResult result,*/ @RequestParam String action, Map<String, Object> map){
		/*Register registerResult = new Register();*/

		switch(action.toLowerCase()){	
		case "register":
			registerService.add(register);
			/*registerResult = register;*/
			break;
		case "edit":
			registerService.edit(register);
			/*registerResult = register;*/
			break;
		case "delete":
			registerService.delete(register.getId());
			/*registerResult = new Register();*/
			break;
		case "retrieve":
			Register searchedRegister = registerService.getRegister(register.getId());
			register = searchedRegister!=null ? searchedRegister : new Register();
			break;
			/*map.put("searchList", register);
			return "search";*/
		}
		
	/*	map.put("register", register);*/
		map.put("registerList", registerService.getAllRegister());
		return "register";
		
	}
	/*@RequestMapping("/search")
	 public ModelAndView getList() {
		List searchList = registerService.getAllRegister();
		  return new ModelAndView("list", "searchList", searchList);
	}*/
	
	/*@RequestMapping("/list")
	 public ModelAndView getList() {
		List registerList = registerService.getAllRegister();
		  return new ModelAndView("list", "registerList", registerList);
	}*/
	
}