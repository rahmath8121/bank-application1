<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">

<title>Footer</title>
<style>
div.container {
	width: 100%;
	border: 1px solid gray;
}

footer {
	background: #333;
	color: #eee;
	font-size: 11px;
	padding: 20px;
}
</style>
</head>
<body>
	<footer class="page-footer font-small blue">

	<div class="container-fluid text-center text-md-left">
		<div class="row">
			<div class="col-sm-2">
				<h6>Copyright new &copy; 2018 BellInfo</h6>
			</div>
			<!-- end col-sm-2 -->


			<div class="col-sm-2">
				<ul class="unstyled">
					<li><a href="${contextPath}/projectbank/login">Home</a></li>
					<li><a href="https://www.chase.com/digital/resources/about-chase">About Us</a></li>
					<li><a href="https://www.chase.com/digital/resources/customer-service">Contact</a></li>
				</ul>
			</div>
			<!-- end col-sm-2 -->

			<div class="col-sm-2">
				<h6>Follow Us</h6>
				<ul class="unstyled">
					<li><a href="https://twitter.com/?lang=en">Twitter</a></li>
					<li><a href="https://www.facebook.com/">Facebook</a></li>
					<li><a href="https://plus.google.com/discover">Google Plus</a></li>
				</ul>
			</div>
			<!-- end col-sm-2 -->

			<div class="col-sm-2">
			</div>
			<!-- end col-sm-2 -->
		</div>
		<!-- end row -->
	</div>
</footer>
</body>
</html>