package com.model.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class Register {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@NotEmpty(message = "must be filled") 
	private String yourname;
	private String emailid;
	private String mobilenumber;
	private String enterpassword;
	private String confirmpassword;

	public Register() {

	}

	public Register(int id, String yourname, String emailid, String mobilenumber, String enterpassword,
			String confirmpassword) {
		this.id = id;
		this.yourname = yourname;
		this.emailid = emailid;
		this.mobilenumber = mobilenumber;
		this.enterpassword = enterpassword;
		this.confirmpassword = confirmpassword;
	}

	public String getYourname() {
		return yourname;
	}

	public void setYourname(String yourname) {
		this.yourname = yourname;
	}

	public String getEmailid() {
		return emailid;
	}

	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}

	public String getMobilenumber() {
		return mobilenumber;
	}

	public void setMobilenumber(String mobilenumber) {
		this.mobilenumber = mobilenumber;
	}

	public String getEnterpassword() {
		return enterpassword;
	}

	public void setEnterpassword(String enterpassword) {
		this.enterpassword = enterpassword;
	}

	public String getConfirmpassword() {
		return confirmpassword;
	}

	public void setConfirmpassword(String confirmpassword) {
		this.confirmpassword = confirmpassword;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

}
