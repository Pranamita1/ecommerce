<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c1" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%-- <%@ page
	import="java.security.*, java.util.* ,org.hibernate.SessionFactory, javax.servlet.http.HttpServletRequest, com.eflower.Dao.*, com.eflower.DaoImpl.*,com.eflower.model.*,com.eflower.DBConfig.*"%>
 --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<div class="row" style="background-color: black; height: 50px;">
		<nav class="navbar navbar-inverse col-md-12">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">FlowerZone</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li><a href="<c1:url value="Home"/>">Home</a></li>
					<li><a href="${pageContext.request.contextPath}/Product">Products</a></li>
					<li><a href="<c1:url value="About"/>">About Us</a></li>

					<li><a href="#"><span
							class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<sec:authorize access="hasAuthority('Admin')">
						<%-- <li><a href="<c1:url value="admin/loginAdmin"/>"><span
								class="glyphicon glyphicon-user"></span> Admin</a></li> --%>
								<li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" >Admin
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="${pageContext.request.contextPath}/admin/loginAdmin">Product</a></li>
          <li><a href="${pageContext.request.contextPath}/admin/supplier">Supplier</a></li>
          
        </ul>
      </li>
					</sec:authorize>
					<sec:authorize access="isAnonymous()">
						<li><a href="<c1:url value="login"/>"><span
								class="glyphicon glyphicon-user"></span> Sign In</a></li>
						<li><a href=<c1:url value="Sign_up"/>><span
								class="glyphicon glyphicon-registration-mark"></span> Sign Up</a></li>
					</sec:authorize>
					<sec:authorize access="isAuthenticated()">
                        <li  style="margin-top:8.5%; margin-:5%; color:white; border:0px solid white"> ${name }</li>
						<li><a href="${pageContext.request.contextPath}/logout"><span
								class="glyphicon glyphicon-user"></span> Sign out</a></li>
					</sec:authorize>
				</ul>
			</div>
		</div>
		</nav>
	</div>

</body>
</html>