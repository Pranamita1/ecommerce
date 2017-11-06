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
<body>
<div class="container-fluid">
<%@ include file="/WEB-INF/views/header.jsp" %>
<div  class="row">
	<div class="col-md-12">
		<form style="border:0px solid red;width:505px;margin-left:25%;">
			<div class="form-group">
				<label>Your name:</label>
				<input type="text" class="form-control" style="  width:500px;" placeholder="Enter your name"/>
			</div>
			<div class="form-group">
				<label>Your Email:</label>
				<input type="text" class="form-control" style="  width:500px;" placeholder="Enter your email "/>
			</div>
			<div class="form-group">
				<label>Your Address:</label>
				<input type="text" class="form-control" style="  width:500px;" placeholder="Enter your address"/>
			</div>
			<div class="form-group">
				<label>Summary:</label>
				<textarea  class="form-control" style="height:200px; width:500px;"  placeholder="Summary..."></textarea>
			</div>
			<input type="submit" value="Submit" class="submit"style=""/>
		</form>
	</div>
</div>
</div>
<%@ include file="/WEB-INF/views/footer.jsp" %>
</body>