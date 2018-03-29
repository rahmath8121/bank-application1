package com.bellinfo.spring.tiles.service;

import java.io.FileOutputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.bellinfo.spring.tiles.model.Balance;
import com.bellinfo.spring.tiles.model.Login;
import com.bellinfo.spring.tiles.model.Registration;
import com.bellinfo.spring.tiles.repository.StudentRepository;
import com.itextpdf.text.Document;
import com.itextpdf.text.Image;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;

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

	public Document getStatement(String user) throws Exception {
		System.out.println(user);
		Class.forName("org.postgresql.Driver");
		Connection con = DriverManager.getConnection(
				"jdbc:postgresql://bellinfo.c3rbut2zylxn.us-east-1.rds.amazonaws.com:5432/Bellinfo", "rahmath8121",
				"Intern8121!");
		PreparedStatement stmt = con.prepareStatement("SELECT * FROM TABLE2 where name=?");
		stmt.setString(1, user);
		ResultSet query_set = stmt.executeQuery();
		Document my_pdf_report = new Document();
		PdfWriter.getInstance(my_pdf_report, new FileOutputStream("Statement.pdf"));
		my_pdf_report.open();
		my_pdf_report.addTitle("BankStatement");
		Image img = Image.getInstance("chase-logo.png");
		my_pdf_report.add(img);
		PdfPTable my_first_table = new PdfPTable(6);
		PdfPCell table_cell;
		table_cell = new PdfPCell(new Phrase("ID"));
		my_first_table.addCell(table_cell);
		table_cell = new PdfPCell(new Phrase("NAME"));
		my_first_table.addCell(table_cell);
		table_cell = new PdfPCell(new Phrase("TRANSAMT"));
		my_first_table.addCell(table_cell);
		table_cell = new PdfPCell(new Phrase("FROMACCT"));
		my_first_table.addCell(table_cell);
		table_cell = new PdfPCell(new Phrase("TYPE"));
		my_first_table.addCell(table_cell);
		table_cell = new PdfPCell(new Phrase("TOACCT"));
		my_first_table.addCell(table_cell);

		while (query_set.next()) {
			String id = query_set.getString("ID");
			table_cell = new PdfPCell(new Phrase(id));
			my_first_table.addCell(table_cell);
			String name = query_set.getString("NAME");
			System.out.println(name);
			table_cell = new PdfPCell(new Phrase(name));
			my_first_table.addCell(table_cell);
			String trans_amt = query_set.getString("TRANSAMT");
			table_cell = new PdfPCell(new Phrase(trans_amt));
			my_first_table.addCell(table_cell);
			String from_acct = query_set.getString("FROMACCT");
			table_cell = new PdfPCell(new Phrase(from_acct));
			my_first_table.addCell(table_cell);
			String type = query_set.getString("TYPE");
			table_cell = new PdfPCell(new Phrase(type));
			my_first_table.addCell(table_cell);
			String to_acct = query_set.getString("TOACCT");
			table_cell = new PdfPCell(new Phrase(to_acct));
			my_first_table.addCell(table_cell);

		}
		my_pdf_report.add(my_first_table);
		my_pdf_report.close();
		query_set.close();
		stmt.close();
		con.close();
		return my_pdf_report;

	}
	
	public Balance getAccountsData(String name) throws Exception {
		Balance bal = studentRepository.getAccountBal(name);
		return bal;
	}

}
