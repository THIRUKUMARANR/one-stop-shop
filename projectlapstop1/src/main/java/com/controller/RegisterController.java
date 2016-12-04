package com.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.model.entity.Register;
import com.model.entity.Role;
import com.model.service.RegisterService;
import com.model.service.RoleService;

@Controller
public class RegisterController {
	@Autowired
	private RegisterService registerService;

	@Autowired
	RoleService roleService;

	@RequestMapping("/register")
	public String setupregForm(Map<String, Object> map) {

		Register register = new Register();
		map.put("register", register);
		map.put("registerList", registerService.getAllRegister());

		return "register";
	}

	@RequestMapping(value = "register", method = RequestMethod.POST)
	public String doregActions(@Valid @ModelAttribute("register") Register register, BindingResult result,
			@RequestParam String action, Map<String, Object> map) {
		{
			if (result.hasErrors()) {/* for validation */
				return "register";
			}
		}
		Role rol = new Role();
		Register registerResult = new Register();
		switch (action
				.toLowerCase()) { /* will convert upper case to lower case */
		case "register":

			rol.setRole("ROLE_USER");
			rol.setId_fk(register);

			register.setEnabled(true);
			registerService.add(register);
			roleService.add(rol);
			break;
		case "edit":
			registerService.edit(register);
			break;
		case "delete":
			registerService.delete(register.getId());
			System.out.println("delete in controller");
			break;
		}

		/* registerResult = register; */
		map.put("register", registerResult);
		map.put("registerList", registerService.getAllRegister());
		return "register";
	}

	@RequestMapping("/deleteRegister")
	public String deleteusr(@RequestParam int id) {
		registerService.delete(id);
		System.out.println("delete in controller");
		return "redirect:userDetails";

	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logoutPage(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("in login logout method");
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}
		return "redirect: index?logout";
	}

}