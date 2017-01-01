package com.controller;

import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.model.entity.CartItems;
import com.model.entity.Product;
import com.model.service.CartItemsService;
import com.model.service.CategoryService;
import com.model.service.ProductService;


@Controller
public class CartController {

	@Autowired
	ProductService productService;

	@Autowired
	CategoryService categoryService;

	@Autowired
	CartItemsService cartItemsService;

	@RequestMapping("/viewDetails")
	public String viewDetail(@RequestParam("pdt1") int productId, Map<String, Object> map, Product product) {
		map.put("categoryList", categoryService.getAllCategory());
		Product p = productService.getProduct(productId);
		map.put("product", p);
		map.put("categoryList", categoryService.getAllCategory());
		return "viewDetails";
	}

	@RequestMapping(value = "/addtocart")
	public String AddtoCart(@RequestParam("cart") int id, Map<String, Object> map, Product product) {
		CartItems cart = new CartItems();
		Product p1 = productService.getProduct(id);
		cart.setQuantity("1");
		cart.setTotalPrice(p1.getprice());
		cart.setProductid_fk(p1);//foreign key of Productid
		map.put("product", p1);
		cartItemsService.add(cart);
		map.put("cartList", cartItemsService.getAllCartitems());
		map.put("categoryList", categoryService.getAllCategory());
		
		return "cart";

	}
	@RequestMapping("/remove")
	public String rem(@RequestParam("pdt3") int id, Map<String, Object> map) {
		cartItemsService.delete(id);
		map.put("cartList", cartItemsService.getAllCartitems());
		return "Cart";
	}
	@RequestMapping("/CartItem")
	public String Cart(Map<String, Object> map) {
		map.put("cartList", cartItemsService.getAllCartitems());
		map.put("categoryList", categoryService.getAllCategory());
		return "Cart";
	}
}