package com.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.model.dao.CartDao;
import com.model.entity.Cartitems;



@Service
public class CartServiceImp implements CartService {

	@Autowired
	private CartDao cd;
	
	@Transactional
	public void add(Cartitems cart) {
		cd.add(cart);
		
	}

	@Transactional
	public List getAllCartitems() {
		return cd.getAllCartitems();
	}

	
}