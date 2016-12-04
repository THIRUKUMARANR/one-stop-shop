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
<title>category</title>

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
			<li class="nav navbar-nav"><a href="index.jsp">Home</a></li>
			<li><a href="category">category</a></li>
			<li><a href="contact">contact</a></li>
			<li><a href="product.jsp">add product</a></li>
		</ul>
		<div class="col-sm-3">
		<input type="search" class="form-control" id="search"
		placeholder="search">
		</div>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="signup"><span
					class="glyphicon glyphicon-user"></span> Sign Up</a></li>
			<li><a href="loginn"><span
					class="glyphicon glyphicon-log-in"></span> Login</a></li>
			<li><a href="#"><span> <i class="fa fa-shopping-cart"></i></span>
					my cart</a></li>
		</ul>
	</div>
	
	
	</nav>
	<div class="container">
	<center>
		<h1>featured contents</h1>
		</center>

		<br>
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<li data-target="#myCarousel" data-slide-to="3"></li>
				<li data-target="#myCarousel" data-slide-to="4"></li>

			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="<c:url value='resources/images/6.png'/>"
						alt="spectre" class="img-responsive	"
						style="width: 4000px; height: 370px" />
					<div class="carousel-caption">
						<h2>
							<font color="orange">Top picks</font>
						</h2>
						<h3>
							<p>
								<font color="orange">mac book think different</font>
							</p>
						</h3>
					</div>
				</div>
				<div class="item">
					<img src="<c:url value='resources/images/3.jpg'/>"
						alt="spectre" class="img-responsive"
						style="width: 4000px; height: 370px" />
				</div>

				<div class="item">
					<img src="<c:url value='resources/images/2.jpg'/>"
						alt="spectre" class="img-responsive"
						style="width: 4000px; height: 370px" />
				</div>

				<div class="item">
					<img src="<c:url value='resources/images/4.jpg'/>"
						alt="spectre" class="img-responsive"
						style="width: 4000px; height: 370px" />
				</div>
				<div class="item">
					<img src="<c:url value='resources/images/5.jpg'/>"
						alt="spectre" class="img-responsive"
						style="width: 4000px; height: 370px" />
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
	

	<div class="container">
		<center>
		<h2>Categories</h2>
		</center>

		<div class="row">
			<div class="col-md-4">

				<a href="topselling"><img
					src="<c:url value='resources/images/1.jpg'/>"
					alt="spectre" class="img-responsive"
					style="width: 4000px; height: 370px" /> </a>
				<p>
				<h3>top selling laptops</h3>
				</p>
				
			</div>
			<div class="col-md-4">
				<a href="gaming"><img
					src="<c:url value='resources/images/2.jpg'/>"
					alt="spectre" class="img-responsive"
					style="width: 4000px; height: 370px" /> </a>
				<p>
				<h3>Gaming laptops</h3>
				</p>
				
			</div>
			<div class="col-md-4">

				<a href="exclusive"><img
					src="<c:url value='resources/images/3.jpg'/>"
					alt="spectre" class="img-responsive"
					style="width: 4000px; height: 370px" /> </a>
				<p>
				<h3>only on lapstop</h3>
				</p>
				
			</div>
		</div>
	</div>
	<%-- <c:if test="${!empty productList}">
		
			<c:forEach items="${productList}" var="admin">
				<img src ="<c:url value='resources/images/product/${admin.img}.jpg'/>" alt="b" class="img-responsive"/>
			</c:forEach>
		
	</c:if> --%>

	




</body>
</body>
</html>