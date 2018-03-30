package com.hibernate.javabased;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
public class Table2 {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	int Id;
	
	@Column(name="name")
	String name;
	@Column(name="transamt")
	String transamt;
	@Column(name="fromacct")
	String fromacct;
	@Column(name="type")
	String type;
	@Column(name="toacct")
	String toacct;
	
	
	public Table2(String transamt, String fromacct, String type, String toacct) {
		super();
		
		this.transamt = transamt;
		this.fromacct = fromacct;
		this.type = type;
		this.toacct = toacct;
	}

	public Table2() {
		
	}
    
    
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTransamt() {
		return transamt;
	}
	public void setTransamt(String transamt) {
		this.transamt = transamt;
	}
	public String getFromacct() {
		return fromacct;
	}
	public void setFromacct(String fromacct) {
		this.fromacct = fromacct;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getToacct() {
		return toacct;
	}
	public void setToacct(String toacct) {
		this.toacct = toacct;
	}
	@Override
	public String toString() {
		return "Table2 [name=" + name + ", transamt=" + transamt + ", fromacct=" + fromacct + ", type=" + type
				+ ", toacct=" + toacct + "]";
	}

	

}
