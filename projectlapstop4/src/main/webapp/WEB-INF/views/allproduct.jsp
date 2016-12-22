<%@include file="header.jsp"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.div1 {
	width: 350px;
	height: 380px;
	border: 2px solid black;
	box-sizing: border-box;
}
</style>

</head>
<body>
<div class="container">
		<center><h1>WELCOME</h1></center>

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
					<img src="<c:url value='resources/images/1.jpg'/>" alt="gaming"
						class="img-responsive	" style="width: 4000px; height: 370px" />
					<div class="carousel-caption">
						<h2>
							<font color="orange">APPLE</font>
						</h2>
						<h3>
							<p>
								<font color="orange">think different</font>
							</p>
						</h3>
					</div>
				</div>
				<div class="item">
					<img src="<c:url value='resources/images/2.jpg'/>" alt="gaming"
						class="img-responsive" style="width: 4000px; height: 370px" />
				</div>

				<div class="item">
					<img src="<c:url value='resources/images/3.jpg'/>" alt="gaming"
						class="img-responsive" style="width: 4000px; height: 370px" />
				</div>

				<div class="item">
					<img src="<c:url value='resources/images/4.jpg'/>" alt="gaming"
						class="img-responsive" style="width: 4000px; height: 370px" />
				</div>
				<div class="item">
					<img src="<c:url value='resources/images/5.jpg'/>" alt="gaming"
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

	<c:if test="${!empty productList}">

		<div class="container">
			<div class="row">
				<center><h2>Products</h2></center>

				<div class="row text-center">
					<c:forEach items="${productList}" var="admin">


						<div class="col-md-4">

							<a href="memberShip"><div class="div1">
									<img
										src="<c:url value='resources/images/product/${admin.image}.jpg'/>"
										alt="sports" class="img-responsive"
										style="width: 4000px; height: 370px" />
								</div></a> <br>
							<button type="button" class="btn btn-default">View
								Details</button>
							<button type="button" class="btn btn-default">Add to
								Cart</button>

							<button type="button" class="btn btn-default">Buy Now</button>
							<h2>RS.${admin.price} INR</h2>
							<h3>${admin.productname}</h3>
							
						</div>
					</c:forEach>
				</div>

			</div>

		</div>

	</c:if>
</body>
</html>