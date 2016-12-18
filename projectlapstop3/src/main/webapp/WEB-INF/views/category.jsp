


<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%-- <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> --%>
<html>
<head>
<%-- <script src="<c:url value="/resources/jquery/jquery-3.1.1.min.js" />"></script>
<link href="<c:url value="/resources/css/bootstrap.min.css" />"rel="stylesheet">
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script> --%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Category Page</title>

</head>
<body>
<%@include file="header.jsp"%>

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