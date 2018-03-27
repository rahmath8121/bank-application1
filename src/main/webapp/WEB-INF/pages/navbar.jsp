<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<title>Welcome</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
#searchInput {
	width: 200px;
}

.navbar-brand {
	padding: 13px 15px;
}

.alert {
	margin-top: 20px;
	display: none;
}

.well {
	margin: 20px 0;
}

.tabbable img.thumbnail {
	margin: 0 20px 10px 0;
}

.thumbnails {
	margin: 20px 0;
}

.thumbnail {
	position: relative;
}

.thumbnail h3 {
	font-size: 16px;
	margin: 0 0 10px;
	line-height: 20px;
}

.thumbnail .price {
	font-size: 22px;
	position: absolute;
	top: -10px;
	right: -10px;
	padding: 10px;
}

.thumbnail .price sup {
	font-weight: normal;
	font-size: 12px;
}

.thumbnail span.glyphicon {
	margin-right: 5px;
}
</style>
</head>
<body>
	<div class="container-fluid" id="main">
		<div class="navbar navbar-fixed-top">
			<div class="container">

				<!-- .btn-navbar is used as the toggle for collapsed navbar content -->
				<button class="navbar-toggle"
					data-target=".navbar-responsive-collapse" data-toggle="collapse"
					type="button">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>

				<a class="navbar-brand" href="/"><img src="images/Netflix.png"
					alt="Your Logo"></a>

				<div class="nav-collapse collapse navbar-responsive-collapse">
					<ul class="nav navbar-nav">
						<li class="active"><a href="#">Home</a></li>
						<li class="active"><a href="#">Log In</a></li>
						<li class="active"><a href="#">Sign Up</a></li>

						<form class="navbar-form pull-left">
							<input type="text" class="form-control"
								placeholder="Search this site..." id="searchInput">
							<button type="submit" class="btn btn-default">
								<span class="glyphicon glyphicon-search"></span>
							</button>
						</form>
						<!-- end navbar-form -->

						<ul class="nav navbar-nav pull-right">
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown"><span
									class="glyphicon glyphicon-user"></span> My Account <strong
									class="caret"></strong></a>

								<ul class="dropdown-menu">
									<li><a href="#"><span
											class="glyphicon glyphicon-wrench"></span> Settings</a></li>

									<li><a href="#"><span
											class="glyphicon glyphicon-refresh"></span> Update Profile</a></li>

									<li><a href="#"><span
											class="glyphicon glyphicon-briefcase"></span> Billing</a></li>

									<li class="divider"></li>

									<li><a href="#"><span class="glyphicon glyphicon-off"></span>
											Sign out</a></li>
								</ul></li>
						</ul>
						<!-- end nav pull-right -->
				</div>
				<!-- end nav-collapse -->

			</div>
			<!-- end container -->
		</div>
		<!-- end navbar -->
	</div>
	<!-- end container -->
	<br />



	<!-- All Javascript at the bottom of the page for faster page loading -->

	<!-- First try for the online version of jQuery-->


</body>
</html>
