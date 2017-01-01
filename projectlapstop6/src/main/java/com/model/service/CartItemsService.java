package com.model.service;

import java.util.List;

import com.model.entity.CartItems;



public interface CartItemsService {
	public void add(CartItems cartItems);
	public void delete(int cartItems_id);
	public CartItems getCartItems(int cartItems_id);
	public 	List getAllCartitems();

}
