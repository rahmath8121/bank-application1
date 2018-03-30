package com.bellinfo.spring.tiles.repository;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.apache.taglibs.standard.tag.common.core.CatchTag;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.bellinfo.spring.tiles.model.Balance;
import com.bellinfo.spring.tiles.model.Login;
import com.bellinfo.spring.tiles.model.Registration;

@Component
public class StudentRepository {
	
	@Autowired
	JdbcTemplate jdbctemplate;

	public void setJdbctemplate(JdbcTemplate jdbctemplate) {
		this.jdbctemplate = jdbctemplate;
	}

	public void persist(Registration reg) throws SQLException {
		jdbctemplate.update("insert into table1(name,password,email,chkbal,savbal) values(?,?,?,100,100)", reg.getUsername(),reg.getPassword(),reg.getEmail());
		System.out.println("Inserted Successfully");
	}

	public String verify(Login log) {
		String user = log.getUsername();
		String pass = log.getPassword();
		System.out.println("**************");
		System.out.println(user);
		System.out.println(pass);
		String name1 = "";
		try {
			log = jdbctemplate.queryForObject("select * from table1 where name=?", new Object[]{user},
					new RowMapper<Login>() {

						public Login mapRow(ResultSet rs, int rowNum) throws SQLException {
							Login log = new Login();
							log.setUsername(rs.getString("name"));
							log.setPassword(rs.getString("password"));
							return log;
						}
				
					});
			System.out.println(log);
			if(user.equals(log.getUsername())&&pass.equals(log.getPassword())) {
				name1 = "The User Credentials are verified";
				System.out.println(name1);
			}else {
				name1 = "No user record found";
				System.out.println(name1);
			}
			
		} catch (Exception e) {
			return "No user Record is found";
		}
		
		return name1;
		
	}
	
	public Balance getAccountBal(String name) throws Exception {
		double bal = 0;
		double bal1 = 0;
		Balance  balance = new Balance();
		
		Class.forName("org.postgresql.Driver");
		Connection con = DriverManager.getConnection(
				"jdbc:postgresql://bellinfo.c3rbut2zylxn.us-east-1.rds.amazonaws.com:5432/Bellinfo", "rahmath8121",
				"Intern8121!");
		PreparedStatement stmt = con.prepareStatement("SELECT chkbal,savbal FROM TABLE1 where name=?");
		stmt.setString(1, name);
		ResultSet query_set = stmt.executeQuery();
		while(query_set.next()) {
			bal= query_set.getDouble(1);
			bal1=query_set.getDouble(2);
			balance.setChkbal(bal);
			balance.setSavbal(bal1);
			
		}
	return balance;
	}
	
}
