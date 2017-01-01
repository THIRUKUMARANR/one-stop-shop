package com.model.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class Orders {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	
	private int orderid;
	@OneToOne
	@JoinColumn(name = "cartid")
	private Cart cartid_fk;
	@OneToOne
	@JoinColumn(name = "shipId")
	private BillingAddress shipId_fk;
	
	@OneToOne
	@JoinColumn(name = "emailid")
	private Register emailid_fk;
	Orders(int orderid,Cart cartid_fk,BillingAddress sid_fk,Register emailid_fk) {
		super();
		this.orderid = orderid;
		this.cartid_fk = cartid_fk;
		this.shipId_fk = sid_fk;
		this.emailid_fk = emailid_fk;
	}

	public int getOrderid() {
		return orderid;
	}

	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}

	public Register getEmailid_fk() {
		return emailid_fk;
	}

	public void setEmailid_fk(Register emailid_fk) {
		this.emailid_fk = emailid_fk;
	}

	public Cart getCartid_fk() {
		return cartid_fk;
	}

	public void setCartid_fk(Cart cartid_fk) {
		this.cartid_fk = cartid_fk;
	}

	public BillingAddress getShipId_fk() {
		return shipId_fk;
	}

	public void setShipId_fk(BillingAddress shipId_fk) {
		this.shipId_fk = shipId_fk;
	}
	
}
