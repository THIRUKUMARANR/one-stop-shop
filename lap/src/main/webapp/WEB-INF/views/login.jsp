<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="<c:url value="/resources/css/main.css" />">
<script src="<c:url value="/resources/js/jquery.1.10.2.min.js" />"></script>
<script src="<c:url value="/resources/js/main.js" />"></script>
</head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<body>
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
			<li class="active"><a href="#">Home</a></li>
			<li><a href="#">category</a></li>
			<li><a href="contact.jsp">contact</a></li>
			<li><a href="#"></a></li>
		</ul>
		<div class="col-sm-3">
		<input type="search" class="form-control" id="search"
		placeholder="search">
		</div>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="signup.jsp"><span
					class="glyphicon glyphicon-user"></span> Sign Up</a></li>
			<li><a href="login.jsp"><span
					class="glyphicon glyphicon-log-in"></span> Login</a></li>
			<li><a href="#"><span class="glyphicons glyphicons-shopping-cart"></span>
					my cart</a></li>
		</ul>
	</div>
	
	
	</nav>
	
	<center>
	<div class="container">
		<div class="row-fluid">
			<div class="span12">
				<div class="span6">
					<div class="area">
						<form class="form-horizontal">
							<div class="heading">
								<h4 class="form-heading">Log In</h4>
							</div>

							

							<div class="control-group">
								<label class="control-label" for="inputUsername">Username</label>

								<div class="controls">
									<input id="inputUsername" placeholder="E.g. ashwinhegde"
										type="text">
								</div>
							</div>

							<div class="control-group">
								<label class="control-label" for="inputPassword">Password</label>

								<div class="controls">
									<input id="inputPassword" placeholder="Min. 8 Characters"
										type="password">
								</div>
							</div>

							<div class="control-group">
								<div class="controls">
									<label class="checkbox"><input type="checkbox">
										Keep me signed in ¦ <a class="btn btn-link" href="#">Forgot
											my password</a></label>
									<button class="btn btn-success" type="submit">Sign In</button>
									<button class="btn" type="button">Help</button>
								</div>
							</div>

							<div class="alert alert-error">
								<button class="close" data-dismiss="alert" type="button">×</button>
								<strong>Access Denied!</strong> 
							</div>
						</form>
					</div>
				</div>
				</center>

				
</body>

</html>