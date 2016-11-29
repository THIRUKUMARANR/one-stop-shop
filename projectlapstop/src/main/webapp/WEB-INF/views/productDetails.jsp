
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Details</title>
</head>
<body>


	<div style="color: teal; font-size: 30px">Admin Details</div>

	<c:if test="${!empty productList}">
		<table border="1" bgcolor="black" width="600px">
			<tr style="background-color: teal; color: white; text-align: center;"
				height="40px">

				<td>productid</td>
				<td>productname</td>
				<td>productquantity</td>
				<td>productdescription</td>


			</tr>
			<c:forEach items="${productList}" var="admin">
				<tr
					style="background-color: white; color: black; text-align: center;"
					height="30px">

					<td><c:out value="${admin.productid}" /></td>
					<td><c:out value="${admin.productname}" /></td>
					<td><c:out value="${admin.productquantity}" /></td>
					<td><c:out value="${admin.productdescription}" /></td>

				</tr>
			</c:forEach>
		</table>
	</c:if>
<img src ="<c:url value='resources/images/product/${img}.jpg'/>" alt="b" class="img-responsive"/>


</body>
</html>
