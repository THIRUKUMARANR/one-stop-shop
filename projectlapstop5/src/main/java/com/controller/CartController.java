package com.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.model.entity.Cartitems;
import com.model.entity.Product;
import com.model.service.CartService;
import com.model.service.ProductService;



@Controller
public class CartController {

	@Autowired
	private CartService cs;
	@Autowired
	private ProductService productService;
	
	
/*	@RequestMapping("/addtocart")
	public String  cart()
	{
		Cartitems cart=new Cartitems();
		cs.add(cart);
	return "cart"; 
		}
*/	
	
	@RequestMapping("/cart")
	public String getcart(@RequestParam("value")int id,Map<String,Object> map )
	{
		Cartitems cart=new Cartitems();
		Product pr=productService.getProduct(id);
		cart.setQuantity("1");
		cart.setTotal(pr.getprice());
		cart.setProduct(pr);//foreign key of Productid

		
		cs.add(cart);
		/*map.addAttribute("cart", cart);*/
		map.put("cartList", cs.getAllCartitems());
		
	return "cart";
	}
	


}