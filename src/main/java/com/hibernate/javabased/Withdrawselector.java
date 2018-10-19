package com.hibernate.javabased;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import com.hibernate.javabased.TransferObject1;
import com.hibernate.javabased.TransferObject1;

@Component
public class Withdrawselector {

	public String Withdrawsele(TransferObject1 to, String name) {

		// ******************************************
		// TransferObject to = new TransferObject("checking", "savings", 12, "Rahmath");
		// String name="hamed1";
		// ransferObject to = new TransferObject(from, toself, amount, otheracc);

		// *******************************************
        String text="";
		WithdrawMethods ws = new WithdrawMethods(name);
		GetSession gs = new GetSession();
		SessionFactory sf = gs.newSessionFactory();
		Session session = sf.openSession();
		Transaction transaction = session.beginTransaction();
		Criteria cs = session.createCriteria(Table1.class);

		Criterion cr = Restrictions.eq("name", name);
		cs.add(cr);

		Table1 s = (Table1) cs.uniqueResult();
		// System.out.println(s);
		System.out.println(to.getFrom().equalsIgnoreCase("checking") && s.getChkbal() >= to.getAmount());
		System.out.println(to.getToself().equalsIgnoreCase("savings"));
		System.out.println(to.getToself().equalsIgnoreCase("Bill pay"));
		System.out.println(to.getFrom().equalsIgnoreCase("savings") && s.getChkbal() >= to.getAmount());
		System.out.println(to.getToself().equalsIgnoreCase("checking"));

		if (to.getFrom().equalsIgnoreCase("checking") && s.getChkbal() >= to.getAmount()) {
			if (to.getToself().equalsIgnoreCase("savings")) {
				ws.withdraw1(to.getAmount());
			} else if (to.getToself().equalsIgnoreCase("Bill pay")) {
				ws.withdraw6(to.getAmount(), to.getOtheracc());
			} else {
				ws.withdraw4(to.getAmount(), to.getOtheracc());

			}
			text="You Transaction is successful";
		} else if (to.getFrom().equalsIgnoreCase("savings") && s.getSavbal() >= to.getAmount()) {
			if (to.getToself().equalsIgnoreCase("checking")) {
				ws.withdraw2(to.getAmount());
			} else if (to.getToself().equalsIgnoreCase("Bill pay")) {
				ws.withdraw5(to.getAmount(), to.getOtheracc());
			} else {
				ws.withdraw3(to.getAmount(), to.getOtheracc());

			}
			text="You Transaction is successful";
		}

		else {
			text="You Dont Have Sufficient Balance";
			System.out.println("you dont have sufficient balance");
			// System.out.println(to.getFrom().equalsIgnoreCase("checking") && s.getChkbal()
			// >= to.getAmount());

		}

		transaction.commit();
		session.close();
		sf.close();
		return text;
	}

}
