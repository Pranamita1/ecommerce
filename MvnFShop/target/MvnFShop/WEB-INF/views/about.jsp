
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
  <style>
    /* Remove the navbar's default rounded borders and increase the bottom margin */ 
    .navbar {
      margin-bottom: 50px;
      border-radius: 0;
    }
    
    /* Remove the jumbotron's default bottom margin */ 
     .jumbotron {
      margin-bottom: 0;
    }
   
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
	a:hover{
		text-decoration:none;
		
	}
	li:hover{
		color:red;
	}
	.submit{
	margin-left:30%;
	padding:4px 50px ;
	font-size:18px;
	
	border-radius:10px;
	border-style:none;
	border:2px solid #d9d9d9;
	background-color: #80bfff;
	color:white;
	 
	}
	.submit:hover{
		background-color:#66ffff;
		border:2px solid #4dff4d;
	}
.sp {
	background-color: white;
	padding-bottom: 6px;
	padding-top: 6px;
	padding-left: 10px;
	padding-right: 10px;
	border-bottom-left-radius: 1155px;
	border-bottom-right-radius: 1155px;
	border-top-left-radius: 1155px;
	border-top-right-radius: 1155px;
}
.sp:hover{
	background-color:#ff3333;
	color:white;
}
.sp1 {
	background-color: white;
	padding-bottom: 7px;
	padding-top: 7px;
	padding-left: 8px;
	padding-right: 8px;
	border-bottom-left-radius: 1155px;
	border-bottom-right-radius: 1155px;
	border-top-left-radius: 1155px;
	border-top-right-radius: 1155px;
	margin-left: 3%;
}
.sp1:hover{
	background-color:#ff3333;
	color:white;
}
.sp2 {
	background-color: white;
	padding-bottom: 6px;
	padding-top: 6px;
	padding-left: 5px;
	padding-right: 5px;
	border-bottom-left-radius: 1155px;
	border-bottom-right-radius: 1155px;
	border-top-left-radius: 1155px;
	border-top-right-radius: 1155px;
	margin-left: 3%;
}
.sp2:hover{
	background-color:#ff3333;
	color:white;
}
  </style>
</head>
<body>
<div class="container-fluid">
<%@ include file="/WEB-INF/views/header.jsp" %>
<div  class="row">
	<div class="col-md-12">
		<div class="col-md-5" style="margin-left:27%;border:1px solid">
		 <h2>//Company Name//</h2>
		 <h5>//company address//</h5>
		 <h5>//company fon number//</h5>
		 <p>//Something about Company//</p>
		</div> 
	</div>
</div>
</div>
<%@ include file="/WEB-INF/views/footer.jsp" %>
</body>