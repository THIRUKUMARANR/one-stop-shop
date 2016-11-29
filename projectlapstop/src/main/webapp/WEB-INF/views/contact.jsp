<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">
<head>
<script src="<c:url value="/resources/jquery/jquery-3.1.1.min.js" />"></script>
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring 4 MVC - HelloWorld Index Page</title>

</head>
<body>
<%@include file="header.jsp"%>
<style type="text/css">
	body {
	background-color: #CCC;
	margin: 80px 80px 100px 100px;
}

div#fixedheader {
	position: fixed;
	top: 0px;
	left: 0px;
	width: 100%;
	color: #CCC;
	background: #333;
	padding: 20px;
}

div#fixedfooter {
	position: fixed;
	bottom: 0px;
	left: 0px;
	width: 100%;
	color: #CCC;
	background: #333;
	padding: 8px;
}
</style>
<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">LAPSTOP</a>
		</div>
		<ul class="nav navbar-nav">
			<li class="index.jsp"><a href="#">Home</a></li>
			<li><a href="category.jsp">category</a></li>
			<li><a href="contact.jsp">contact</a></li>
			<li><a href="#"></a></li>
		</ul>
		<div class="col-sm-3">
		<input type="search" class="form-control" id="search"
		placeholder="search">
		</div>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="register.jsp"><span
					class="glyphicon glyphicon-user"></span> Sign Up</a></li>
			<li><a href="loginn.jsp"><span
					class="glyphicon glyphicon-log-in"></span> Login</a></li>
			<li><a href="#"><span class="glyphicons glyphicons-shopping-cart"></span>
					my cart</a></li>
		</ul>
	</div>
	
	
	</nav>
	<div class="jumbotron jumbotron-sm">
		<div class="container">
			<div class="row">
				<div class="col-sm-12 col-lg-12">
					<h1 class="h1">
						Contact us <small>Feel free to contact us</small>
					</h1>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-8">
				<div class="well well-sm">
					<form>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label for="name"> Name</label> <input type="text"
										class="form-control" id="name" placeholder="Enter name"
										required="required" />
								</div>
								<div class="form-group">
									<label for="email"> Email Address</label>
									<div class="input-group">
										<span class="input-group-addon"><span
											class="glyphicon glyphicon-envelope"></span> </span> <input
											type="email" class="form-control" id="email"
											placeholder="Enter email" required="required" />
									</div>
								</div>
								<div class="form-group">
									<label for="subject"> Subject</label> <select id="subject"
										name="subject" class="form-control" required="required">
										<option value="na" selected="">Choose One:</option>
										<option value="service">General Customer Service</option>
										<option value="suggestions">Suggestions</option>
										<option value="product">Product Support</option>
									</select>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="name"> Message</label>
									<textarea name="message" id="message" class="form-control"
										rows="9" cols="25" required="required" placeholder="Message"></textarea>
								</div>
							</div>
							<div class="col-md-12">
								<button type="submit" class="btn btn-primary pull-right"
									id="btnContactUs">Send Message</button>
							</div>
						</div>
					</form>
				</div>
			</div>
			<div class="col-md-4">
				<form>
					<legend>
						<span class="glyphicon glyphicon-globe"></span> Our office
					</legend>
					<address>
						<strong>LAPSTOP Inc.</strong><br> 795 Folsom Ave, Suite 600<br>
						San Francisco, CA 94107<br> <abbr title="Phone"> P:</abbr>
						(123) 456-7890
					</address>
					<address>
						<strong>Full Name</strong><br> <a href="mailto:#">consumerqueries@lapstop.com</a>
					</address>
				</form>
			</div>
		</div>
	</div>


</body>
</html>
