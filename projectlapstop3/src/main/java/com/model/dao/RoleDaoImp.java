package com.model.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;


import com.model.entity.Role;

@Repository
@Transactional
public class RoleDaoImp implements RoleDao {
	@Autowired
	private SessionFactory session;
	
	@Transactional(propagation=Propagation.SUPPORTS)
	
	public void add(Role role) {
		session.getCurrentSession().save(role);
		
	}

	

}