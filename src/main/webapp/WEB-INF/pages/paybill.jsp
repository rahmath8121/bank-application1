<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>
<html lang="en">

<head>
<style>
</style>
</head>

<body>
<br>
<br>
	<h1 align="left-side">PAY BILL</h1><hr>
	
	<f:form class="login-form" action="/transfer" method="POST" modelAttribute="transfer1">
		
		<br> 
		FROM <f:select path="from" name="Account_Type">
			<f:option value="Checking">Checking</f:option>
			<f:option value="Savings">Savings</f:option>
		</f:select> 
		Select e-Bill  <f:select name ="billpay" path="otheracc" >
  				<f:option value="Powerbill">PowerBill</f:option>
				  <f:option value="Mobilebill">MobileBill</f:option>
  					<f:option value="Internetbill">InternetBill</f:option>
  					<f:option value="Creditbill">CreditBill</f:option>
				</f:select><br><br>
		
		<br> 
		<br> Enter Amount: <f:input type="text"
			name="amount" path="amount"></f:input><br>
		<br> <br> <input style="background-color: lightblue"
			type="submit" value="Submit">
	
	</f:form>
</body>

</body>
</html>
