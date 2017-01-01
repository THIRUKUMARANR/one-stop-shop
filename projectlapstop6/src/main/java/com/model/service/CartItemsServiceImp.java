package com.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.model.dao.CartItemsDao;
import com.model.entity.CartItems;

@Service

public class CartItemsServiceImp implements CartItemsService {
	@Autowired
	private CartItemsDao cartItemsDao;

	@Transactional
	public void add(CartItems cartItems) {
		cartItemsDao.add(cartItems);		
	}

	@Transactional
	public List getAllCartitems() {
		return cartItemsDao.getAllCartitems();
	}

	@Transactional
	public void delete(int cartItems_id) {
		cartItemsDao.delete(cartItems_id);
		
	}

	@Transactional
	public CartItems getCartItems(int cartItems_id) {
		return cartItemsDao.getCartItems(cartItems_id);
	}

}
