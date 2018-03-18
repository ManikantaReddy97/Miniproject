<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home Page</title>
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
    margin-bottom: 10px;
}

li a:hover {
    background-color: #4F4F4F;
    -ms-transform: scale(1.4); 
    -webkit-transform: scale(1.4); 
    transform: scale(1.4); 
}

.dropbtn {
    display: inline-block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
    margin-top: 16px;
}

.dropbtn1 {
    display: inline-block;
    color: white;
    text-align: center;
    padding: 8px 10px;
    text-decoration: none;
    margin-top: 6px;
}

.dropdown:hover .dropbtn {
    background-color: #4F4F4F;
}
li.dropdown {
    display: inline-block;
    margin-bottom:10px;
    
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 130px;
    box-shadow: 0px 8px 12px 0px rgba(0,0,0,0.2);
    z-index: 1;
}
.dropdown-content a {
    color: black;
    padding: 8px 12px;
    text-decoration: none;
    display: block;
    text-align: left;
    width: "70px";
}

.dropdown-content a:hover {background-color: #f1f1f1}

.dropdown:hover .dropdown-content {
    display: block;
    margin-bottom: 10px;
}

	</style>
</head>

<body bgcolor="skyblue">
	<div class="w3-container w3-black">
<nav class="w3-bar w3-black w3-container">
 <ul class="nav navbar-nav">
  <li class="active"><a href="<%=request.getContextPath()%>/JSP/Home.jsp">Home</a></li>
  <li><a href="#contact">Contact</a></li>
<li class="dropdown">
    <a href="javascript:void(0)" class="dropbtn">Previous Transfers</a>
    <div class="dropdown-content">
      <a href="#">Last Week</a>
      <a href="#">Last Month</a>
      <a href="#">Last Several Months</a>
    </div>
  </li>
  <li style="float:right"><a href="#contact"></a></li>
  <% 
User user=(User)session.getAttribute("user");
if(user!= null) { %>
First Name:	<%=user.getFirstName() %>  Last Name:	<%=user.getLastName() %>
<% } else{
  System.out.println("login Failed");
}%>

<li class="dropdown" style="float:right">
    <a href="javascript:void(0)" class="dropbtn1"><%=user.getUserName() %></a>
    <div class="dropdown-content">
      <a href="#"><%=user.getFirstName() %>  <%= user.getLastName() %></a>
      <a href="#"><%=user.getEmail() %></a>
      <a href="<%=request.getContextPath()%>/JSP/Home.jsp"><i class="fa fa-sign-out" style="font-size:20px;color:black"></i>    Logout</a>
    </div>
  </li>
</ul>
</nav>
</div>
<br><br>
<center>Hello   <%= user.getFirstName() %>   <%= user.getLastName() %>      thank you for logging in.</center>
<h2> File Upload:</h2>
Select a text file to Upload: <br/>
<form action="uploadFile.jsp" method="post" enctype="multipart/form-data">
<input type="file" name="file" size="50"/><br/><br/>
<input type="submit" value="Upload File"/>
</form>
</body>
</html>