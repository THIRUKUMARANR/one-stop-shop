<%@include file="header.jsp"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.4.8/angular.min.js">
	
</script>
<script>
	angular.module('myApp', []).controller('MyController',
			[ '$scope', '$http', function($scope, $http) {

				$http.get("angularview").success(function(data) {
					$scope.person = data;
				});

			} ]);
</script>
</head>
<body>
	<div class="container" ng-app="myApp" ng-controller="MyController">
		<div class="row">
		
		

						<input type="text" class="form-control"
							placeholder="Search for Products,brands,categories" ng-model="searchProduct">

		
			<h2>all Products</h2>

			<div class="row text-center">
				<div ng-repeat="pro in person | filter:searchProduct">


					<div class="col-md-4">
					
						<a href="memberShip"><div class="div1">
								<img
									src="<c:url value='resources/images/product/{{pro.image}}.jpg'/>"
									alt="lap" class="img-responsive"
									style="width: 4000px; height: 370px" />
							</div></a> <br>
						<a href="viewDetails?pdt1={{pro.productid}}"><button type="button" class="btn btn-warning">View
							Details</button>
					<a href="cart"></a>	<button type="button" class="btn btn-success">Add to Cart</button>

						<button type="button" class="btn btn-danger">Buy Now</button>
						<h2>{{pro.productname}}</h2>
						<h3>RS.{{pro.price}} INR</h3>

						
					</div>
					
				</div>
			</div>

		</div>

	</div>
</body>
</html>