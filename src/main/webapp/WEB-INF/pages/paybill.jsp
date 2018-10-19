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
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>
	<br>
	<br>
	<h1 align="left-side">PAY BILL</h1>
	<hr>

	<f:form class="login-form" action="/paybill" method="POST"
		modelAttribute="transfer1">

		<br> 
		FROM <f:select path="from" name="Account_Type">
			<f:option value="Checking">Checking</f:option>
			<f:option value="Savings">Savings</f:option>
		</f:select>
		<br>
		<br>
		Select e-Bill  <f:select name="billpay" path="otheracc">
			<f:option value="Powerbill">PowerBill</f:option>
			<f:option value="Mobilebill">MobileBill</f:option>
			<f:option value="Internetbill">InternetBill</f:option>
			<f:option value="Creditbill">CreditBill</f:option>
		</f:select>
		<br>
		<br>
		
		 Enter Amount: <f:input type="text" name="amount" path="amount"></f:input>
		<br>
		<br>
		
		<input style="background-color: lightblue" type="submit"
			value="Submit">

	</f:form>
</body>

</body>
</html>
