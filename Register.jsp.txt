<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<head>
	<title>Registration form
	</title>
	<link rel="icon" href="<%=request.getContextPath()%>/images/i1.png">
	<style type="text/css">
		body{
			text-align: center;
		}

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
a:hover {
	color: white;
	 -ms-transform: scale(1.6); 
    -webkit-transform: scale(1.6); 
    transform: scale(1.6); 
}

label{
      color: black;
      font-size: 17px;
      font-family: arial;
    }

    h3{
      font-style: bold;
    }

	</style>
</head>
<body bgcolor="skyblue">
<div class="w3-container w3-black">
<nav class="w3-bar w3-black w3-container">
 <ul class="nav navbar-nav"><li class="active"><a href="<%=request.getContextPath()%>/JSP/Home.jsp">Home</a></li>
  <li><a href="<%=request.getContextPath()%>/JSP/contact.jsp">Contact</a></li>
  <li><a href="<%=request.getContextPath()%>/JSP/About.jsp">About</a></li>
  <li style="float:right"><a href="<%=request.getContextPath()%>/JSP/Login.jsp"><i class="fa fa-sign-in" style="font-size:20px;color:white"></i>     Login</a></li>
  <li style="float:right"><a href="<%=request.getContextPath()%>/JSP/Register.jsp"><i class="fa fa-user" style="font-size:20px;color:white"></i>     Sign Up</a></li>
</ul>
</nav>
</div>
<br><br>
<h1>Registration Form</h1><br>
<form method="post" action="submitRegister.jsp"> 
<label for="first">First Name: <input id="first" type="text" name="First" placeholder="John" required></label><br><br>
<label for="last">Last Name: <input id="last" type="text" name="Last" placeholder="smith" required></label><br><br>
<label for="last">User Name: <input id="uname" type="text" name="Uname" placeholder="john123" required></label><br><br>
<div>
<label for="email">Email:   <input id="email" type="Email" name="Email" placeholder="Your Email" required></label><br><br>
<label for="last">Password: <input id="pass" type="Password" name="Pass" placeholder="Enter the password" required></label><br><br>
<label for="pass">Passwords:</label><br><br>
<label for="pass1">Textual Passwords<input id="pass1" type="checkbox" name="pass1"></label>
<label for="pass2">Color Rating<input id="pass2" type="checkbox" name="pass2"></label>
<label for="pass3">Image Clicks<input id="pass" type="checkbox" name="pass3"></label>
<label for="pass4">Random Images<input id="pass" type="checkbox" name="pass4"></label><br><br>
</div>

		<div>
			<label for="rquestion">Recovery Question: </label> <select
				name="Requestion">
				<%
					List<Question> questions = RecoveryQuestion.getAllQuestions();
					for (final Question question : questions) {
				%>
					<option value="<%=question.getQid()%>"><%=question.getQvalue()%></option>
				<%
					}
				%>
			</select>
		</div>
		<br> <br>
		<div>
	<label for="answer">Enter your Answer Here: <input id="answer" type="text" name="Answer" placeholder="Enter the answer here..." required></label><br><br>
	</div>
<br>
<input type="submit" class="w3-btn w3-black" value="submit"/>
</form>
</body>
</html>
