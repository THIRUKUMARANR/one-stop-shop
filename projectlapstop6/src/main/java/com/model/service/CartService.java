package com.model.service;

import java.util.List;

import com.model.entity.Cart;



public interface CartService {
	public void add(Cart cart);
	public void delete(int cartId);
	public Cart getCart(int cartId);
	public List getAllCart();

}
