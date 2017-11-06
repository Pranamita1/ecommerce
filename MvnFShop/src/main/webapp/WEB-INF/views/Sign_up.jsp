 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   <link rel="stylesheet" href="<c:url value='/resources/css/Project.css' />">
</head>

<body style="margin:0%">
<div class="container-fluid">
<%@ include file="/WEB-INF/views/header.jsp" %>
<div class="container-fluid">
 
  <form action="/action_page.php"style="margin-left:35%;margin-bottom:3%; border:0px solid red; width:350px;">
  
  <div class="form-group">
     <!--  <label for="name">User Id:</label>
      <input type="number" class="form-control" id="num" placeholder="Enter your mobile number" name="num" style="width:350px">
    </div>-->
  
    <div class="form-group">
      <label for="name">Name:</label>
      <input type="text" class="form-control" id="name" placeholder="Enter your name" name="name" style="width:350px">
    </div>
	
	<div class="form-group">
      <label for="num">Contact number:</label>
      <input type="number" class="form-control" id="num" placeholder="Enter your mobile number" name="num" style="width:350px">
    </div>
    <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" class="form-control" id="email" placeholder="Enter email" name="email" style="width:350px">
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd"style="width:350px">
    </div>
<!--  	<div class="form-group">
      <label for="pwd">Confirm Password:</label>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd" style="width:350px">
    </div>-->
	
    
    <button type="submit" class="btn btn-default"style="margin-left:40%">Submit</button>
  </form>
</div>
 
</div>
<%@ include file="/WEB-INF/views/footer.jsp" %>
<link rel="stylesheet" href="F:/demo.css"  />
</body>
</html>