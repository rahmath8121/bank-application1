<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<title>Welcome</title>
</head>
<body style="background-color:#cccccc;" >
<br>
<br>
<div class="container">
<div class="bg-light">
	<f:form action="/student" method="POST" modelAttribute="student">
Student Name: <f:input path="name" />
		<f:errors path="name" cssStyle="color:red"></f:errors>
		<br>
		<br>
Select Course: <f:select path="courseName">
			<option value="">No Selection</option>
			<option value="Mathematic">Mathematics</option>
			<option value="Biology">Biology</option>
			<option value="Statistics">Statistics</option>
		</f:select>
		<br>
		<br>
Select Level of your Degree: <f:select path="degreeType">
			<option value="">No Selection</option>
			<option value="Bachelors">Bachelors</option>
			<option value="Masters">Master</option>
			<option value="Guest">Guest</option>
		</f:select>
		<br>
		<br>
		<f:button>Submit</f:button>
	</f:form>
	<br>
	<c:set var="contextPath" value="${pageContext.request.contextPath}" />
	<a href="${contextPath}/details">Get List</a>
	<br>
	</div>
	</div>
</body>
</html>