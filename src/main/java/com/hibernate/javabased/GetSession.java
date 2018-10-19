package com.hibernate.javabased;

import java.util.Properties;

import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Component;

public class GetSession {

	public SessionFactory newSessionFactory() {

		Properties properties = new Properties();
		properties.put("hibernate.dialect", "org.hibernate.dialect.PostgreSQLDialect");
		properties.put("hibernate.hbm2ddl.auto", "update");
		properties.put("hibernate.show_sql", "true");
		properties.put("hibernate.connection.driver_class", "org.postgresql.Driver");
		properties.put("hibernate.connection.url",
				"jdbc:postgresql://bellinfo.c3rbut2zylxn.us-east-1.rds.amazonaws.com:5432/Bellinfo");
		properties.put("hibernate.connection.username", "rahmath8121");
		properties.put("hibernate.connection.password", "Intern8121!");
		properties.put("hibernate.default_schema", "public");

		return new Configuration().addProperties(properties).addAnnotatedClass(Table1.class)
				.addAnnotatedClass(Table2.class)
				.buildSessionFactory(new StandardServiceRegistryBuilder().applySettings(properties).build());
	}

}
