<%@include file="header.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html lang="en">
<head>




<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>lapstop-online store for laptops and accessories</title>

</head>

<body>







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
				<li><a href="gaming">GAMING LAPTOPS</a></li>
				</p>
			</div>
			<div class="col-sm-4">
				<img src="<c:url value='/resources/images/2.jpg'/>"
					class="img-responsive" style="width: 100%" alt="Image">
				<p>
				<li><a href="topselling">TOP PICKS</a></li>
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
	<!-- <div class="content">
		<fieldset>
			<legend>Navigation menu</legend>


			<a href="memberShip" style="margin: 50;">Become Member</a>
		</fieldset>
	</div> -->


	<%@include file="footer.jsp"%>








</body>
</html>