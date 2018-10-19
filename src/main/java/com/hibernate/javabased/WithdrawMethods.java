package com.hibernate.javabased;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Component;
@Component
public class WithdrawMethods {
	
	//*******************
	
	String name;
	
	//***********************
	
	public WithdrawMethods(String name) {
		super();
		this.name = name;
	}
	
	public void withdraw1(float amount) {
		Criteria c=startTransaction();
		
		Table1 s = (Table1) c.uniqueResult();
		float chkbal=s.getChkbal()-amount;
		float savbal=s.getSavbal()+amount;
		s.setChkbal(chkbal);
		s.setSavbal(savbal);
		session.save(s);
		
		
		Table2 t= new Table2(String.valueOf(amount), "checking", "Balance Transfer", "Savings Account");
		t.setName(name);
		session.save(t);
		
		closeTransaction();
	}
	
	

	public void withdraw2(float amount) {
		Criteria c=startTransaction();
		
		Table1 s = (Table1) c.uniqueResult();
		float chkbal=s.getChkbal()+amount;
		float savbal=s.getSavbal()-amount;
		s.setChkbal(chkbal);
		s.setSavbal(savbal);
		session.save(s);
		
		
		Table2 t= new Table2(String.valueOf(amount), "Savings", "Balance Transfer", "Checking Account");
		t.setName(name);
		session.save(t);
		
		closeTransaction();
	}
	
	public void withdraw3(float amount,String receivername) {
		Criteria c=startTransaction();
		
		Table1 s = (Table1) c.uniqueResult();
		
		float savbal=s.getSavbal()-amount;
		s.setSavbal(savbal);
		session.save(s);
		
		
		Table2 t= new Table2(String.valueOf(amount), "Savings", "Paid TO", receivername);
		t.setName(name);
		session.save(t);
		
		closeTransaction();
	}
	  
	public void withdraw4(float amount,String receivername) {
		Criteria c=startTransaction();
		
		Table1 s = (Table1) c.uniqueResult();
		float chkbal=s.getChkbal()-amount;
		s.setChkbal(chkbal);
		session.save(s);
		
		
		Table2 t= new Table2(String.valueOf(amount), "checking", "Paid To", receivername);
		t.setName(name);
		session.save(t);
		
		closeTransaction();
	}
	
	public void withdraw5(float amount,String receivername) {
		Criteria c=startTransaction();
		
		Table1 s = (Table1) c.uniqueResult();
		
		float savbal=s.getSavbal()-amount;
		s.setSavbal(savbal);
		session.save(s);
		
		
		Table2 t= new Table2(String.valueOf(amount), "Savings", "Bill Pay", receivername);
		t.setName(name);
		session.save(t);
		
		closeTransaction();
	}
	  
	public void withdraw6(float amount,String receivername) {
		Criteria c=startTransaction();
		
		Table1 s = (Table1) c.uniqueResult();
		float chkbal=s.getChkbal()-amount;
		s.setChkbal(chkbal);
		session.save(s);
		
		
		Table2 t= new Table2(String.valueOf(amount), "checking", "Bill Pay", receivername);
		t.setName(name);
		session.save(t);
		
		closeTransaction();
	}
	
	
	Transaction transaction;
	Session session;
	SessionFactory sf;
	public Criteria startTransaction() {
		GetSession gs = new GetSession();
		sf = gs.newSessionFactory();
		session = sf.openSession();
		transaction = session.beginTransaction();
		Criteria c = session.createCriteria(Table1.class);
		
		Criterion cr = Restrictions.eq("name", name);
		c.add(cr);
		
		return c;
	}
	
	public void closeTransaction(){
		transaction.commit();
		session.close();
		sf.close();
	}

}
