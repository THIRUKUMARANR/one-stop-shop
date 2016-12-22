package com.model.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.model.entity.Register;


@Repository
@Transactional
public class RegisterDaoImp implements RegisterDao {
	@Autowired
	private SessionFactory session;

	@Transactional(propagation=Propagation.SUPPORTS)

	public void add(Register register) {
		session.getCurrentSession().save(register);
		
	}

	@Transactional(propagation=Propagation.SUPPORTS)

	public void edit(Register register) {
		session.getCurrentSession().update(register);
		
	}

	@Transactional(propagation=Propagation.SUPPORTS)

	public void delete(int registerId) {
		session.getCurrentSession().delete(getRegister(registerId));
		
	}

	@Transactional(propagation=Propagation.SUPPORTS)

	public Register getRegister(int registerId) {
		return (Register)session.getCurrentSession().get(Register.class, registerId);
	}

	@Transactional(propagation=Propagation.SUPPORTS)

	public List getAllRegister() {
		return session.getCurrentSession().createQuery("from Register").list();
	}

}
