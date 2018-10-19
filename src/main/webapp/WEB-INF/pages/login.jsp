<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>
<html lang="en">

<head>
<style>
* {
	box-sizing: border-box;
}

body {
	font-family: "HelveticaNeue-Light", "Helvetica Neue Light",
		"Helvetica Neue", Helvetica, Arial, "Lucida Grande", sans-serif;
	color: white;
	font-size: 12px;
	background: #333
		url(http://logosolusa.com/wp-content/uploads/2016/08/chase-bank-logo-photo-4.jpg);
	background-size: cover;
}

form {
	background: #111;
	width: 300px;
	margin: 30px auto;
	border-radius: 0.4em;
	border: 1px solid #191919;
	overflow: hidden;
	position: relative;
	box-shadow: 0 5px 10px 5px rgba(0, 0, 0, 0.2);
}

form:after {
	content: "";
	display: block;
	position: absolute;
	height: 1px;
	width: 100px;
	left: 20%;
	background: linear-gradient(left, #111, #444, #b6b6b8, #444, #111);
	top: 0;
}

form:before {
	content: "";
	display: block;
	position: absolute;
	width: 8px;
	height: 5px;
	border-radius: 50%;
	left: 34%;
	top: -7px;
	box-shadow: 0 0 6px 4px #fff;
}

.inset {
	padding: 20px;
	border-top: 1px solid #19191a;
}

form h1 {
	font-size: 18px;
	text-shadow: 0 1px 0 black;
	text-align: center;
	padding: 15px 0;
	border-bottom: 1px solid rgba(0, 0, 0, 1);
	position: relative;
}

form h1:after {
	content: "";
	display: block;
	width: 250px;
	height: 100px;
	position: absolute;
	top: 0;
	left: 50px;
	pointer-events: none;
	transform: rotate(70deg);
	background: linear-gradient(50deg, rgba(255, 255, 255, 0.15),
		rgba(0, 0, 0, 0));
}

label {
	color: #666;
	display: block;
	padding-bottom: 9px;
}

input[type=text], input[type=password] {
	color: white;
	width: 100%;
	padding: 8px 5px;
	background: linear-gradient(#1f2124, #27292c);
	border: 1px solid #222;
	box-shadow: 0 1px 0 rgba(255, 255, 255, 0.1);
	border-radius: 0.3em;
	margin-bottom: 20px;
}

label[for=remember] {
	color: white;
	display: inline-block;
	padding-bottom: 0;
	padding-top: 5px;
}

input[type=checkbox] {
	display: inline-block;
	vertical-align: top;
}

.p-container {
	padding: 0 20px 20px 20px;
}

.p-container:after {
	clear: both;
	display: table;
	content: "";
}

.p-container span {
	display: block;
	float: left;
	color: #0d93ff;
	padding-top: 8px;
}

input[type=submit] {
	padding: 5px 20px;
	border: 1px solid rgba(0, 0, 0, 0.4);
	text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.4);
	box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.3), inset 0 10px 10px
		rgba(255, 255, 255, 0.1);
	border-radius: 0.3em;
	background: #0184ff;
	color: white;
	float: right;
	font-weight: bold;
	cursor: pointer;
	font-size: 13px;
}

input[type=submit]:hover {
	box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.3), inset 0 -10px 10px
		rgba(255, 255, 255, 0.1);
}

input[type=text]:hover, input[type=password]:hover, label:hover ~ input[type=text],
	label:hover ~ input[type=password] {
	background: #27292c;
}
</style>
</head>
<body>
	<f:form class="login-form" action="/login" method="POST" modelAttribute="login">
		<h1 style="color:white">ChaseLog in</h1>
		<div class="inset">
			<p>
				<label for="email">LOGIN ID</label>
				<f:input path="username" type="text" placeholder="username"/>
				 <f:errors path="username" cssStyle="color:red"></f:errors>
			</p>
			<p>
				<label for="password">PASSWORD</label>
				 <f:input path="password" type="password" placeholder="password"/>
			</p>
			<p>
				<input type="checkbox" name="remember" id="remember"> <label
					for="remember">Remember me</label>

			</p>
			<br> 
			<input type="submit"  name="go" id="go" value="Login">
			<hr />
			<c:set var="contextPath" value="${pageContext.request.contextPath}" />
			<a class="btn btn-primary center-block" 
				href="${contextPath}/registration" role="button">Register
				Here</a>
		</div>

	</f:form>
</body>

</html>