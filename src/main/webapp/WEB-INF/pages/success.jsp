<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="refresh" content="3;url=http://localhost:8080/spring-tiles/login" />
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<title>Registration Success</title>
</head>
<body>
<div style="text-align: center">
<h4>${message }</h4>
<br>
<br>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
		<a href="${contextPath}/login" class="w3-button w3-aqua"><span style="text-align: center">Click here to Login now</span></a>
		</div>
</body>
</html>