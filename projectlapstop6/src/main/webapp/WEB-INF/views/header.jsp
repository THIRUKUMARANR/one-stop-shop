<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<script src="<c:url value="/resources/jquery/jquery-3.1.1.min.js" />"></script>
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
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
			<ul class="nav navbar-nav">
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#">Category <span class="caret"></span></a>
				<ul class="dropdown-menu">

					<c:forEach items="${categoryList}" var="admin">
						<%-- <li><a href="${admin.categoryname}"><c:out
									value="${admin.categoryname}" /> </a></li> --%>

						 <li><a href="allproduct?pdt=${admin.categoryname}">${admin.categoryname}</a></li>
					</c:forEach>
				</ul></li>

		</ul>
			<!-- <li><a href="category1">category</a></li> -->
			<li><a href="contact">contact</a></li>
			<li><div>
			<a class="navbar-brand" href="viewall">All products</a>		
		</div></li>
			<sec:authorize access="hasRole('ROLE_ADMIN')">
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">admin <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="products">add product</a></li>
						<li><a href="category">add category</a></li>
						
					</ul>
					</sec:authorize>
		</ul>
		

		<div class="col-sm-5">
			<input type="search" class="form-control" id="search"
				placeholder="search">
		</div>


		<ul class="nav navbar-nav navbar-right">
			<li><sec:authorize access="isAnonymous()">
					<li><a href="register"><span
							class="glyphicon glyphicon-user"></span> Sign Up</a>
				</sec:authorize></li>
			<li><sec:authorize access="isAnonymous()">

					<li><a href="login"><span
							class="glyphicon glyphicon-log-in"></span> Login</a></li>
				</sec:authorize></li>
			<li><sec:authorize access="hasRole('ROLE_USER')">
					<li><a href="cart"><span> <i
								class="fa fa-shopping-cart"></i></span> my cart</a></li>
				</sec:authorize></li>
			<li><sec:authorize access="hasAnyRole('ROLE_USER','ROLE_ADMIN')">
					<a href="logout"><span class="glyphicon glyphicon-log-out"></span>Logout</a>
				</sec:authorize></li>

		</ul>
	</div>
	</nav>






</body>
</html>