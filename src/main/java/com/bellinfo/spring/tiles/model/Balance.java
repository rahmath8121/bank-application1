package com.bellinfo.spring.tiles.model;

public class Balance {

	double chkbal;
	double savbal;

	public Balance(double chkbal, double savbal) {
		super();
		this.chkbal = chkbal;
		this.savbal = savbal;
	}

	public Balance() {
		super();
	}

	public double getChkbal() {
		return chkbal;
	}

	public void setChkbal(double chkbal) {
		this.chkbal = chkbal;
	}

	public double getSavbal() {
		return savbal;
	}

	public void setSavbal(double savbal) {
		this.savbal = savbal;
	}

}
