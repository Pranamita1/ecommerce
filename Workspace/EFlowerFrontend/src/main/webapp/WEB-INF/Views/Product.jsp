<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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


<style>
.productDiv {
	float: left;
	margin-top: 1%;
	margin-left: 10%;
}

.btnDiv {
	float: right;
	margin-top: 5%;
}

.cartbtn {
	background-color: #00ffff;
	padding: 15px 15px 15px 15px;
}

.buybtn {
	background-color: #00ffff;
	padding: 7px 20px 7px 15px;
	margin-top: 4%;
}

.container {
	position: relative;
}

.overlay {
	position: absolute;
	top: 50%;
	left: 0;
	right: 0;
	background-color: #008CBA;
	overflow: hidden;
	width: 370px;
	height: 0;
	background: rgba(0, 0, 0, 0.3);
	transition: .5s ease;
}

.container:hover .overlay {
	top: 0;
	height: 100%;
}

.text {
	white-space: nowrap;
	color: white;
	position: absolute;
	overflow: hidden;
	top: 50%;
	left: 30%;
}

.mainDiv {
	box-shadow: 2px 2px 4px grey, 0px 0px 20px;
}
</style>

</head>
<body>
	<div class="container-fluid">

		<%@include file="/WEB-INF/Views/Header.jsp"%>

       
		<div class="row">
			<div class="col-md-12"
				style="border: 0px solid red; height: auto; background-color: white;">
				<c:forEach items="${prdList}" var="i">
					<div class="col-md-5 container "
						style="margin-top: 2%; background-color: #F8F8F8; border: 0px solid green; background-color: white; margin-right: 2%; height: auto; width: 400px">
						<div class="col-md-12 mainDiv"
							style="border: 0px solid blue; height: auto;">
							<div class="col-md-12 "
								style="float: left; border: 0px solid black; width: 350px; margin-left: -4.5%; height: 300px; background-color: white; cursor: pointer;">
								<img
									src="<c:url value="/resources/images/product/${i.product_image}" /> "
									width="370px" height="300px" style="margin-left: -4.5%">
								<div class="overlay">
									<div class="text">

										<a href="/ecommerce1/user/addCart/${i.productId}"
											class="btn btn-info" style="text-decoration: none;">Add
											To Cart</a>




									</div>
								</div>



							</div>


							<div style="float: rigth; color: red; font-size: 30px;">
								<p>${i.productName}</p>
							</div>
							<div style="float: rigth; color: blue; font-size: 25px;">
								<p>Price : ${i.productPrice}</p>
							</div>
							<div style="float: rigth; color: blue; font-size: 18px;">
								<p>Description : ${i.productDescription}</p>
							</div>
						</div>
						<%--  <div class="btnDiv" style="border:2px solid grey">
			  		 			 <a href="/ecommerce1/user/addCart/${i.productId}" class="btn btn-info" style="text-decoration:none;">Add To Cart</a> <br/>
			  		  			<!--  <a href="#"  class="btn btn-info" style="margin-top:10%;">Buy Now</a> -->
			  		  </div>
			  		   --%>
					</div>
				</c:forEach>
			</div>


		</div>

	</div>
	</div>


	<%@ include file="/WEB-INF/Views/Footer.jsp"%>
</body>
</html>