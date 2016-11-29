package com.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.Map;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.model.entity.Product;
import com.model.service.ProductService;



@Controller
public class ProductController {
	@Autowired
	private ProductService productService;
	@Autowired
	ServletContext servletContext;

	@RequestMapping("/products")
	public String setupForm(Map<String, Object> map, @ModelAttribute("product") Product product, BindingResult result) {
		 map.put("product", product);
		map.put("productList", productService.getAllProduct());
		return "products";

	}

	@RequestMapping(value = "/product", method = RequestMethod.POST)
	public @ResponseBody ModelAndView uploadFileHandler(@RequestParam("name") String name,
			@RequestParam("file") MultipartFile file, @ModelAttribute("product") Product product, BindingResult result,
			@RequestParam String action, Map<String, Object> map, ModelMap m) {
		if (result.hasErrors()) {
			return new ModelAndView ("products");
		}
		Product productResult = new Product();
		switch (action.toLowerCase()) {
		case "add":
			productService.add(product);
			break;
		case "edit":
			productService.edit(product);
			break;
		case "delete":
			productService.delete(product.getProductid());
			break;

		}

		if (!file.isEmpty()) {
			try {
				byte[] bytes = file.getBytes();

				// Creating the directory to store file
				String rootPath = servletContext.getRealPath("/");
				File dir = new File(rootPath + File.separator + "resources/images/product");
				if (!dir.exists())
					dir.mkdirs();

				// Create the file on server
				File serverFile = new File(dir + File.separator + name + ".jpg");

				BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();

				System.out.println(serverFile);

				
				map.put("product", productResult);
				map.put("productList", productService.getAllProduct());
				m.addAttribute("message", "You successfully uploaded file");
				return new ModelAndView ("productDetails","img",name);

			} catch (Exception e) {
				return new ModelAndView ("You failed to upload " + name + " => " + e.getMessage());
			}
		} else {
			return new ModelAndView("You failed to upload " + name + " because the file was empty.");
		}

	}

}
