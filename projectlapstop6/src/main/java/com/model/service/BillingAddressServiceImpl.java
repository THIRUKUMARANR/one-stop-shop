package com.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.model.dao.BillingAddressDao;
import com.model.entity.BillingAddress;





@Service
public  class BillingAddressServiceImpl implements BillingAddressService {
	@Autowired
	BillingAddressDao bad;
	
	@Transactional
	public void add(BillingAddress bs) {
		bad.add(bs);
	}

}