package com.hibernate.javabased;


import java.util.ArrayList;
import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ForeignKey;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;

@Entity
public class Table1 {
	
	@Id
	@Column(name="name")
	String name;
	
	@Column(name="chkbal")
	float chkbal;
	@Column(name="savbal")
	float savbal;
	@Column(name="email")
	String email;
	@Column(name="address")
	String address;
	@OneToMany
	@JoinColumn(name="name",foreignKey=@ForeignKey(name="name"))
	Collection<Table2> t2=new ArrayList<Table2>();
	@Column(name="password")
	String password;
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
	public Collection<Table2> getT2() {
		return t2;
	}
	public void setT2(Collection<Table2> t2) {
		this.t2 = t2;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public float getChkbal() {
		return chkbal;
	}
	public void setChkbal(float chkbal) {
		this.chkbal = chkbal;
	}
	public float getSavbal() {
		return savbal;
	}
	public void setSavbal(float savbal) {
		this.savbal = savbal;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Table1(String name, float chkbal, float savbal, String email, String address, String password) {
		super();
		this.name = name;
		this.chkbal = chkbal;
		this.savbal = savbal;
		this.email = email;
		this.address = address;
		this.password=password;
	}
	public Table1() {
		
	}
	
	@Override
	public String toString() {
		return "Table1 [name=" + name + ", chkbal=" + chkbal + ", savbal=" + savbal + ", email=" + email + ", address="
				+ address + "]";
	}
	

}
