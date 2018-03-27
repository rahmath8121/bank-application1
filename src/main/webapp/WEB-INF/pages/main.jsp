<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>
<html>
<head>
<style>
div.container {
    width: 100%;
    border: 1px solid gray;
}

header, footer {
    padding: 1em;
    color: white;
    background-color: black;
    clear: left;
    text-align: center;
}

nav {
    float: left;
    max-width: 160px;
    margin: 0;
    padding: 1em;
}

nav ul {
    list-style-type: none;
    padding: 0;
}
   
nav ul a {
    text-decoration: none;
}

article {
    margin-left: 170px;
    border-left: 1px solid gray;
    padding: 1em;
    overflow: hidden;
}
</style>
</head>
<body>

<div class="container">
<article>
  <h1>Welcome</h1>
  <c:set var="contextPath" value="${pageContext.request.contextPath}" />
		<a href="${contextPath}/login" class="w3-button w3-aqua"><span style="text-align: center">Login</span></a>
		<c:set var="contextPath" value="${pageContext.request.contextPath}" />
		<a href="${contextPath}/registration" class="w3-button w3-aqua"><span
			style="text-align: center">Registration</span></a>
</article>
</div>

</body>
</html>
