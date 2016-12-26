package com.model.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.model.entity.Cartitems;



@Repository
@Transactional
public class CartDaoImp implements CartDao {
	@Autowired
	private SessionFactory session;
	
	
	@Override
	public void add(Cartitems cart) {
		
		session.getCurrentSession().save(cart);
	}
	
	
	@Override
	public List getAllCartitems() {
		
		return session.getCurrentSession().createQuery("from Cartitems ").list();

	}



}