package com.model.dao;

import java.util.List;

import com.model.entity.CartItems;



public interface CartItemsDao {
	public void add(CartItems cartItems);
	public void delete(int cartItems_id);
	public CartItems getCartItems(int cartItems_id);

	public 	List getAllCartitems();

}
