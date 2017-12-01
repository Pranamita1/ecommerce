<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="tag"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="<c:url value='/resources/css/Project.css' />">

<title>Insert title here</title>
</head>
<body style="margin: 0%">
	<div class="container-fluid">
		<%@include file="/WEB-INF/Views/Header.jsp"%>

		<!-- Form begins -->

		<div class="row">

			<div class="col-md-6" style="margin-left: 30%">

				<form:form
					action="${pageContext.request.contextPath}/admin/addSupplier"
					method="POST" modelAttribute="Supplier"
					  class="form-group">



					<form:input path="supplierId" type="hidden" />





					<form:label path="supplierName">Supplier Name:</form:label>

					<form:input path="supplierName" type="text" class="form-control" />
					<br>

					<form:label path="supplierContact">Supplier Contact:</form:label>

					<form:input path="supplierContact" type="text" class="form-control" />
					<br>

					<form:label path="supplirAddress">Supplier Address:</form:label>

					<form:input path="supplirAddress" type="text" class="form-control" />
					<br>


					<input type="submit" value="SUBMIT" class="btn1">



				</form:form>

			</div>

		</div>

		<!-- Form ends -->
		<tag:forEach items="${supplierList}" var="s">
			<table class="table">
				<thead>
					<tr>
						<th>Supplier Name</th>
						<th>Supplier Contact</th>
						<th>Supplier Address</th>


					</tr>
				</thead>

				<tbody>
					<tr>

						<td>${s.supplierName}</td>
						<td>${s.supplierContact}</td>
						<td>${s.supplirAddress }</td>
					 
						 
						<td><a href="edit/${s.supplierId }"> Edit</a></td>
						<td><a href="delete/${s.supplierId}">Delete</a></td>


					</tr>
				</tbody>
			</table>

		</tag:forEach>

		<%@ include file="/WEB-INF/Views/Footer.jsp"%>

	</div>
</body>
</html>