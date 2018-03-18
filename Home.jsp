<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<head>
	<title>
		Secure Transfer
	</title>
	<link rel="icon" href="<%=request.getContextPath()%>/images/i1.png">
	<style type="text/css">
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #111111;
}

li {
    float: left;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 30px;
    text-decoration: none;
}

li a:hover {
    background-color: #4F4F4F;
    -ms-transform: scale(1.5); 
    -webkit-transform: scale(1.5); 
    transform: scale(1.5); 
}

	</style>
</head>
<body bgcolor="#FFFFFF">
	<div class="w3-container w3-black">
<nav class="w3-bar w3-black w3-container">
 <ul class="nav navbar-nav">
  <li><a href="<%=request.getContextPath()%>/JSP/Home.jsp">Home</a></li>
  <li><a href="<%=request.getContextPath()%>/JSP/contact.jsp">Contact</a></li>
  <li><a href="<%=request.getContextPath()%>/JSP/About.jsp">About</a></li>
  <li style="float:right"><a href="<%=request.getContextPath()%>/JSP/Login.jsp"><i class="fa fa-sign-in" style="font-size:20px;color:white"></i>    Login</a></li>
  <li style="float:right"><a href="<%=request.getContextPath()%>/JSP/Register.jsp"><i class="fa fa-user" style="font-size:20px;color:white"></i>    Sign Up</a></li>
</ul>
</nav>
</div>
<br><br>
<section>
  <center>
  <img class="mySlides" src="<%=request.getContextPath()%>/images/wc.jpg"
  style="width:300px height: 100px">
  <img class="mySlides" src="<%=request.getContextPath()%>/images/wc2.jpg"
  style="width:300px height: 70px">
</center>
</section>

<script>
// Automatic Slideshow - change image every 3 seconds
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}
    x[myIndex-1].style.display = "block";
    setTimeout(carousel, 3000);
}
</script>
</body>
</html>

