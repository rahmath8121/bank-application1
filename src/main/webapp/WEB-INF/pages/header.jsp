
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<c:set var="contextPath" value="${pageContext.request.contextPath}" />
				<a class="navbar-brand" href="${contextPath}/login">CHASE BANK</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
				<c:set var="contextPath" value="${pageContext.request.contextPath}" />
					<li class="active"><a href="${contextPath}/login">Home</a></li>
					<li class="dropdown">
					<a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Find ATM/Branch<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">ATM</a></li>
							<li><a href="#">BRANCH</a></li>
						</ul>
					</li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li>
					<c:set var="contextPath" value="${pageContext.request.contextPath}" />
					<a href="${contextPath}/registration"><span class="glyphicon glyphicon-user"></span>
							Sign Up</a></li>
					<li>
					<c:set var="contextPath" value="${pageContext.request.contextPath}" />
					<a href="${contextPath}/login"><span class="glyphicon glyphicon-log-in"></span>
							Login</a></li>
				</ul>
			</div>
		</div>
	</nav>


</body>
</html>





