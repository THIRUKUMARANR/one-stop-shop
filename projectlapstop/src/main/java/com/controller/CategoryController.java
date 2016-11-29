package com.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.model.entity.Category;
import com.model.service.CategoryService;



@Controller
public class CategoryController {

	@Autowired
	private CategoryService categoryService;

	@RequestMapping("/category")
	public String catForm(Map<String, Object> map, @ModelAttribute("category") Category category,
			BindingResult result) {

		Category category1 = new Category();
		map.put("category", category1);
		map.put("categoryList", categoryService.getAllCategory());

		return "category";
	}

	@RequestMapping(value = "category", method = RequestMethod.POST)
	public String Actions(@ModelAttribute("category") Category category, BindingResult result,
			@RequestParam String action, Map<String, Object> map) {

		Category categoryResult = new Category();
		switch (action.toLowerCase()) {
		case "add":
			categoryService.add(category);
			break;
		case "edit":
			categoryService.edit(category);
			break;
		case "delete":
			categoryService.delete(category.getCategoryid());
			break;
		}

		categoryResult = category;
		map.put("category", categoryResult);
		map.put("categoryList", categoryService.getAllCategory());
		return "categoryDetails";
	}

}
