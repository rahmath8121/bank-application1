package com.bellinfo.spring.tiles.repository;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.apache.taglibs.standard.tag.common.core.CatchTag;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

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
		jdbctemplate.update("insert into student_new(name,password,email) values(?,?,?)", reg.getUsername(),reg.getPassword(),reg.getEmail());
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
			log = jdbctemplate.queryForObject("select * from student_new where name=?", new Object[]{user},
					new RowMapper<Login>() {

						public Login mapRow(ResultSet rs, int rowNum) throws SQLException {
							Login log = new Login();
							log.setUsername(rs.getString(1));
							log.setPassword(rs.getString(2));
							return log;
						}
				
					});
			System.out.println(log);
			if(user.equals(log.getUsername())&&pass.equals(log.getPassword())) {
				name1 = "The User Credentials are verified";
				System.out.println(name1);
				return name1;
			}else {
				name1 = "No user record found";
				System.out.println(name1);
			}
			
		} catch (Exception e) {
			return "No user Record is found";
		}
		
		return name1;
		
	}
}
