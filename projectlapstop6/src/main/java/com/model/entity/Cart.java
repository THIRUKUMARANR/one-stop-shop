package com.model.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class Cart {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int cartId;
	private double total;
	private int quantity;
	private String date_time;
	@OneToOne
	@JoinColumn(name = "emailid")
	@JsonIgnore
	private Register emailid_fk;
	@ManyToOne
	@JoinColumn(name = "productid")
	private Product product_fk;
	/*@OneToMany(mappedBy = "cart", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    private List<CartItems> cartItems;*/
	@OneToOne
	@JoinColumn(name="id")
	private Register register_fk;

	public Cart(int cartId, double total, int quantity, String date_time, Register emailid_fk,Product product_fk,Register register_fk) {
		super();
		this.cartId = cartId;
		this.total = total;
		this.quantity = quantity;
		this.date_time = date_time;
		this.emailid_fk = emailid_fk;
		this.product_fk=product_fk;
		this.register_fk=register_fk;
	}

	public int getCartId() {
		return cartId;
	}

	public void setCartId(int cartId) {
		this.cartId = cartId;
	}

	public double getTotal() {
		return total;
	}

	public void setTotal(double total) {
		this.total = total;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public String getDate_time() {
		return date_time;
	}

	public void setDate_time(String date_time) {
		this.date_time = date_time;
	}

	public Register getEmailid_fk() {
		return emailid_fk;
	}

	public void setEmailid_fk(Register emailid_fk) {
		this.emailid_fk = emailid_fk;
	}

	public Product getProduct_fk() {
		return product_fk;
	}

	public void setProduct_fk(Product product_fk) {
		this.product_fk = product_fk;
	}

	public Register getRegister_fk() {
		return register_fk;
	}

	public void setRegister_fk(Register register_fk) {
		this.register_fk = register_fk;
	}

	/*public List<CartItems> getCartItems() {
		return cartItems;
	}

	public void setCartItems(List<CartItems> cartItems) {
		this.cartItems = cartItems;
	}
*/
	
}
