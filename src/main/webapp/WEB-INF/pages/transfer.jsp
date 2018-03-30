<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript">
function CheckAccount(val){
 var element=document.getElementById('account');
 if(val=='To'||val=='others')
   element.style.display='block';
 else  
   element.style.display='none';
}

</script>
</head>
<body >
<h1 align="left-side" >TRANSFER</h1>	
<f:form class="login-form" action="/transfer" method="POST" modelAttribute="transfer">
		
		<br> 
		FROM <f:select path="from" name="Account_Type">
			<f:option value="Checking">Checking</f:option>
			<f:option value="Savings">Savings</f:option>
		</f:select> To <f:select  path="toself" name="Account_Type" onchange='CheckAccount(this.value);'>
			
			<f:option value="Checking">Checking</f:option>
			<f:option value="Savings">Savings</f:option>
			<f:option value="others">others</f:option>
		</f:select><br> UserName:
		<f:input type="text" path="otheracc" name="Account_Type" id="account"
			style='display: none;'></f:input><br> 
			Enter Amount: <f:input type="text" path="amount"
			name="amount"/><br>
		<br> <br> <input style="background-color: lightblue"
			type="submit" value="Submit">
	
	</f:form>
</body>
</html>