package com.bellinfo.spring.tiles.service;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.bellinfo.spring.tiles.model.Login;
import com.bellinfo.spring.tiles.model.Registration;
import com.bellinfo.spring.tiles.repository.StudentRepository;

@Component
public class StudentServiceImpl {

	@Autowired
	StudentRepository studentRepository;
		public void setStudentRepository(StudentRepository studentRepository) {
		this.studentRepository = studentRepository;
	}

	public void repMethods(Registration reg) throws SQLException {
		studentRepository.persist(reg);
		
	}
	
	public String getvalidation(Login log) {
		String str = studentRepository.verify(log);
		return str;
	}
	

	

}
