<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta name="viewport" content="width=device-width,initial-scale=1">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="icon" href="<%=request.getContextPath()%>/images/i1.png">
<style type="text/css">
label {
	color: black;
	font-size: 20px;
	font-family: arial;
}

h3 {
	font-style: bold;
}
</style>

<script type="text/javascript">
  function validate1(){
  var firstPass= document.getElementById("newPass").value;
  var secondPass= document.getElementById("confPass").value;
  
  if(firstPass === secondPass){
	document.write("Password Changed Successfully<br><br>");
	document.write('<a href="<%=request.getContextPath()%>/JSP/Login.jsp">Click Here to go back to Login Page</a>');
  }
  
  else{
	  document.write("The passwords don't match each other<br><br>");
	  document.write('<a href="<%=request.getContextPath()%>/JSP/forgotPass.jsp">Click Here to go back </a>');
		}
  
</script>
</head>
<body bgcolor="skyblue">
	<form action="<%=request.getContextPath()%>/JSP/Login.jsp"
		method="post" onsubmit="validate1()">
		<center>
			<h1>Don't Worry if you forgot your password</h1>
			<br>
			<br>
			<div>
				<label for="newPass"> Enter the new Password: <input
					id="newPass" type="text" name="nPass" size="32"
					placeholder="Enter the new Password here..." required></label><br>
				<br> <label for="confPass"> Confirm the new Password: <input
					id="confPass" type="text" name="cPass" size="32"
					placeholder="Re-Enter the new Password here..." required></label><br>
			</div>
			<br>
			<br> <input type="submit" value="submit" />
		</center>
	</form>
</body>
</html>