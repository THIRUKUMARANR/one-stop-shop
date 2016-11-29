


<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<script src="<c:url value="/resources/jquery/jquery-3.1.1.min.js" />"></script>
<link href="<c:url value="/resources/css/bootstrap.min.css" />"rel="stylesheet">
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Category Page</title>

</head>
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
			<li class="nav navbar-nav"><a href="index">Home</a></li>
			<li><a href="category1">category</a></li>
			<li><a href="contact">contact</a></li>
			<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">admin <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="products">add product</a></li>
          <li><a href="category">add category</a></li>
          </ul>
          

			
		</ul>
		<div class="col-sm-3">
		<input type="search" class="form-control" id="search"
		placeholder="search">
		</div>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="register"><span
					class="glyphicon glyphicon-user"></span> Sign Up</a></li>
			<li><a href="loginn"><span
					class="glyphicon glyphicon-log-in"></span> Login</a></li>
			<li><a href="#"><span> <i class="fa fa-shopping-cart"></i></span>
					my cart</a></li>
		</ul>
	</div>
	
	
	</nav>
	<div class="container">
		<h2>Category Details</h2>

		<div>
			<form:form action="category" method="POST" commandName="category"
				enctype="multipart/form-data">


				<div class="form-group">
					<form:label class="control-label col-sm-2" path="categoryid">Category ID:</form:label>
					<div class="col-sm-10">
						<form:input path="categoryid" class="form-control" required="true"
							placeholder="Category Id" />
						<form:errors path="categoryid" cssClass="error" />
					</div>
				</div>

				<div class="form-group">
					<form:label class="control-label col-sm-2" path="categoryname">Enter Category Name:</form:label>
					<div class="col-sm-10">
						<form:input type="text" path="categoryname" class="form-control"
							required="true" placeholder="Enter Category Name" />
						<form:errors path="categoryname" cssClass="error" />
					</div>
				</div>


				<div class="form-group">
					<form:label class="control-label col-sm-2"
						path="categorydescription">Category Description :</form:label>
					<div class="col-sm-10">
						<form:input path="categorydescription" class="form-control"
							required="true" placeholder="Category Description" />
						<form:errors path="categorydescription" cssClass="error" />
					</div>
				</div>

				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<input type="submit" class="btn btn-default" name="action"
							value="Add" />
					</div>
				</div>

				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<button type="submit" class="btn btn-default" name="action"
							value="Edit">Edit</button>
					</div>
				</div>

				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<button type="submit" class="btn btn-default" name="action"
							value="Delete">Delete</button>
					</div>
				</div>
			</form:form>

		</div>
	</div>
</body>
</html>