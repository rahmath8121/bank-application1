package com.hibernate.javabased;


public class TransferObject1 {
	String from;
	String toself;
	
	float amount;
	String otheracc;
	@Override
	public String toString() {
		return "TransferObject [from=" + from + ", toself=" + toself + ", amount=" + amount + ", otheracc=" + otheracc
				+ "]";
	}
	public TransferObject1(String from, String toself, float amount, String otheracc) {
		super();
		this.from = from;
		this.toself = toself;
		this.amount = amount;
		this.otheracc = otheracc;
	}
	public TransferObject1() {
		this.from = "";
		this.toself ="";
		this.amount = 0;
		this.otheracc = "";
		
	}
	
	public String getFrom() {
		return from;
	}
	public void setFrom(String from) {
		this.from = from;
	}
	public String getToself() {
		return toself;
	}
	public void setToself(String toself) {
		this.toself = toself;
	}
	public float getAmount() {
		return amount;
	}
	public void setAmount(float amount) {
		this.amount = amount;
	}
	public String getOtheracc() {
		return otheracc;
	}
	public void setOtheracc(String otheracc) {
		this.otheracc = otheracc;
	}
	

}
