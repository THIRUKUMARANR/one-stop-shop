<%@include file="header.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%-- <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> --%>

<html lang="en">
<head>
<%--  <script src="<c:url value="/resources/jquery/jquery-3.1.1.min.js" />"></script>
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
<meta name="viewport" content="width=device-width, initial-scale=1"> --%> 



<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring 4 MVC - HelloWorld Index Page</title>

</head>

<body>


  
	
	<!-- <style type="text/css">
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
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#">admin <span class="caret"></span></a>
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
			<li><sec:authorize access="isAnonymous()">

					<li><a href="login"><span
							class="glyphicon glyphicon-log-in"></span> Login</a></li>
				</sec:authorize></li>
			<li><sec:authorize access="hasRole('ROLE_USER')">
					<li><a href="#"><span> <i
								class="fa fa-shopping-cart"></i></span> my cart</a></li>
				</sec:authorize></li>
					<li><sec:authorize access="hasRole('ROLE_USER')">
					<a href="logout"><span class="glyphicon glyphicon-log-out"></span>Logout</a>
				</sec:authorize></li>

		</ul>
	</div>
	</nav> -->
	

	<div class="container">
		<br>
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<li data-target="#myCarousel" data-slide-to="3"></li>
				<li data-target="#myCarousel" data-slide-to="4"></li>
				<li data-target="#myCarousel" data-slide-to="5"></li>

			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="<c:url value='resources/images/1.jpg'/>" alt="LAP"
						class="img-responsive	" style="width: 4000px; height: 370px" />
				</div>
				<div class="item">
					<img src="<c:url value='resources/images/2.jpg'/>" alt="LAP"
						class="img-responsive" style="width: 4000px; height: 370px" />
				</div>

				<div class="item">
					<img src="<c:url value='resources/images/3.jpg'/>" alt="LAP"
						class="img-responsive" style="width: 4000px; height: 370px" />
				</div>

				<div class="item">
					<img src="<c:url value='resources/images/4.jpg'/>" alt="LAP"
						class="img-responsive" style="width: 4000px; height: 370px" />
				</div>
				<div class="item">
					<img src="<c:url value='/resources/images/5.jpg'/>" alt="LAP"
						class="img-responsive" style="width: 4000px; height: 370px" />
				</div>
				<div class="item">
					<img src="<c:url value='/resources/images/6.png'/>" alt="LAP"
						class="img-responsive" style="width: 4000px; height: 370px" />
				</div>


			</div>

			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" role="button"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel" role="button"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	</div>


	<center>
		<iframe width="1080" height="420"
			src="https://www.youtube.com/embed/tXV7k7Bt9ow" frameborder="0"
			allowfullscreen>> </iframe>
	</center>
	<div class="container text-center">
		<h3>H(L)APPY SHOPPING!!</h3>
		<br>
		<div class="row">
			<div class="col-sm-4">
				<img src="<c:url value='/resources/images/4.jpg'/>"
					class="img-responsive" style="width: 100%" alt="Image">
				<p>
				<li><a href="#">GAMING LAPTOPS</a></li>
				</p>
			</div>
			<div class="col-sm-4">
				<img src="<c:url value='/resources/images/2.jpg'/>"
					class="img-responsive" style="width: 100%" alt="Image">
				<p>
				<li><a href="productdetails.jsp">TOP PICKS</a></li>
				</p>
			</div>
			<div class="col-sm-4">
				<div class="well">
					<p>
					<li><a href="#">EXCLUSIVE GAMING LAPTOPS</a></li>
					</p>
				</div>
				<div class="well">
					<p>
					<li><a href="#">TOP SELLING LAPTOPS</a></li>
					</p>
				</div>
			</div>
		</div>
	</div>
	<br>
	<div class="content">
			<fieldset>
				<legend>Navigation menu</legend>
 
				
				<a href="memberShip" style="margin:50;">Become Member</a>
			</fieldset>
		</div>


	<%@include file="footer.jsp"%>








</body>
</html>