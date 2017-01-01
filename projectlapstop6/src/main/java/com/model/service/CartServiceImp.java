package com.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.model.dao.CartDao;
import com.model.entity.Cart;


@Service

public class CartServiceImp implements CartService {
	@Autowired
	private CartDao cartDao;

	@Transactional
	public void add(Cart cart) {
		cartDao.add(cart);
		
	}
	@Transactional
	public void delete(int cartId) {
		cartDao.delete(cartId);
		
	}


	@Transactional
	public Cart getCart(int cartId) {
		return cartDao.getCart(cartId);
	}

	@Transactional
	public List getAllCart() {
		return cartDao.getAllCart();
	}

}
