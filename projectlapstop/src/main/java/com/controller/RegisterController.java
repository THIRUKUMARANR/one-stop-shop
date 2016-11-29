package com.controller;

import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.model.entity.Register;
import com.model.service.RegisterService;





@Controller
public class RegisterController {
	@Autowired
	private RegisterService registerService;

	@RequestMapping("/register")
	public String regForm(Map<String, Object> map){
			

		Register register = new Register();
		map.put("register", register);
		map.put("registerList", registerService.getAllRegister());

		return "register";
	}

	@RequestMapping(value = "register", method = RequestMethod.POST)
	public String Actions(@Valid @ModelAttribute("register") Register register , BindingResult result,
			@RequestParam String action, Map<String, Object> map) {
		{
			if(result.hasErrors()){
				return "register";
			}
		}
		Register registerResult = new Register();
		switch (action.toLowerCase()) { 
		case "register":
			registerService.add(register);
			break;
		case "edit":
			registerService.edit(register);
			break;
		case "delete":
			registerService.delete(register.getId());
			break;
				}

		registerResult = register;
		map.put("register", registerResult);
		map.put("registerList", registerService.getAllRegister());
		return "userDetails";
	}

	
}