package com.model.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class cart {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int cartid;
	private int quantity;
	private int subtotal;
	private int grandtotal;
	@ManyToOne
	@JoinColumn(name = "id")
	private cart cartid_fk;

	public cart(int cartid, int quantity, int subtotal, int grandtotal) {
		super();
		this.cartid = cartid;
		this.quantity = quantity;
		this.subtotal = subtotal;
		this.grandtotal = grandtotal;
	}

	public int getCartid() {
		return cartid;
	}

	public void setCartid(int cartid) {
		this.cartid = cartid;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public int getSubtotal() {
		return subtotal;
	}

	public void setSubtotal(int subtotal) {
		this.subtotal = subtotal;
	}

	public int getGrandtotal() {
		return grandtotal;
	}

	public void setGrandtotal(int grandtotal) {
		this.grandtotal = grandtotal;
	}

}
