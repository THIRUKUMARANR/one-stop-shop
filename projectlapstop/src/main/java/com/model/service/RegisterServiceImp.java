package com.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.model.dao.RegisterDao;
import com.model.entity.Register;


@Service

public class RegisterServiceImp implements RegisterService {
	@Autowired
	RegisterDao registerDao;
	@Transactional
	public void add(Register register) {
		registerDao.add(register);
		
	}

	@Transactional
	public void edit(Register register) {
		registerDao.edit(register);
		
	}

	@Transactional
	public void delete(int registerId) {
		registerDao.delete(registerId);
		
	}

	@Transactional
	public Register getRegister(int registerId) {
		return registerDao.getRegister(registerId);
	}

	@Transactional
	public List getAllRegister() {
		return registerDao.getAllRegister();
	}

}
