package com.model.dao;

import java.util.List;

import com.model.entity.Cartitems;


public interface CartDao {

	public void add(Cartitems cart);

	public 	List getAllCartitems();

}