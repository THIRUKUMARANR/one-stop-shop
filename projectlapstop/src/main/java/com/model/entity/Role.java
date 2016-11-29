package com.model.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
public class Role {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int roleid;
	private String role;
	@OneToOne
	@JoinColumn(name="id")
	private Register id_fk;
	public Role(int roleid, String role, Register id_fk){
	super();
	this.roleid = roleid;
	this.role = role;
	this.id_fk = id_fk;
}
	public int getRoleid() {
		return roleid;
	}
	public void setRoleid(int roleid) {
		this.roleid = roleid;
	}
	public String getUserrole() {
		return role;
	}
	public void setUserrole(String userrole) {
		this.role = userrole;
	}
	public Register getInt_id() {
		return id_fk;
	}
	public void setInt_id(Register int_id) {
		this.id_fk = id_fk;
	}

	
	

}
