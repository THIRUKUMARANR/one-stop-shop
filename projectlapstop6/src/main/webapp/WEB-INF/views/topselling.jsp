<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html lang="en">
<head>

<meta name="viewport" content="width=device-width, initial-scale=1">
  


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring 4 MVC - HelloWorld Index Page</title>

</head>

<body>


	<%@include file="header.jsp"%>
	
	
	
	<div class="container">
	<h1>TOP PICKS</h1>
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
					<img src="<c:url value='resources/images/1.jpg'/>" alt="Sports"
						class="img-responsive	" style="width: 4000px; height: 370px" />
				</div>
				<div class="item">
					<img src="<c:url value='resources/images/2.jpg'/>" alt="Sports"
						class="img-responsive" style="width: 4000px; height: 370px" />
				</div>

				<div class="item">
					<img src="<c:url value='resources/images/3.jpg'/>" alt="Sports"
						class="img-responsive" style="width: 4000px; height: 370px" />
				</div>

				<div class="item">
					<img src="<c:url value='resources/images/4.jpg'/>" alt="Sports"
						class="img-responsive" style="width: 4000px; height: 370px" />
				</div>
				<div class="item">
					<img src="<c:url value='/resources/images/5.jpg'/>" alt="Sports"
						class="img-responsive" style="width: 4000px; height: 370px" />
				</div>
				<div class="item">
					<img src="<c:url value='/resources/images/6.png'/>" alt="Sports"
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
			<div class="container">
		<h2>Products</h2>
		<c:if test="${!empty productList}">

			<div class="container">
				<div class="row">
					<h2></h2>

					<div class="row text-center">
						<c:forEach items="${productList}" var="admin">
							<div class="col-md-4">

								<a href="memberShip"><div class="div1">
										<img
											src="<c:url value='resources/images/product/${admin.image}.jpg'/>"
											alt="GAMING" class="img-responsive"
											style="width: 4000px; height: 370px" />
									</div></a> <br>
								<a href="viewDetails?pdt1={{pro.productid}}"><button type="button" class="btn btn-warning">View
									Details</button>
								<button type="button" class="btn btn-success">Add to
									Cart</button>

								<button type="button" class="btn btn-danger">Buy Now</button>
								<h2>RS.${admin.price} INR</h2>
								<h3>${admin.productname}</h3>

							</div>
						</c:forEach>
					</div>

				</div>

			</div>

		</c:if>
		</body>
</body>
</html>
	