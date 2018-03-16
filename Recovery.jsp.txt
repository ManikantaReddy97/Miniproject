<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<head>
<title>Recovery</title>
<link rel="icon" href="<%=request.getContextPath()%>/images/i1.png">
<style type="text/css">
label {
	color: black;
	font-size: 17px;
	font-family: arial;
}

h3 {
	font-style: bold;
}
</style>
</head>
<body bgcolor="skyblue">
	<center>
	<h2> RECOVERY</h2>
		<br>
		<form action="<%=request.getContextPath()%>/JSP/forgotPass.jsp" method="post" onsubmit="validate2()">
			<br>
			<div>
				<label for="rquestion">Recovery Question: </label> <select required>
					<option value="Select a Question">Select the Question chosen during registeration time</option>
					<option value="Name of your pet">Name of your pet</option>
					<option value="Your favourite team(any sport)">Your favourite Team (any sport)></option>
					<option value="Your favourite Movie(any language)">Your favourite Movie(any Language)</option>
					<option value="Your favourite tourist spot">Your favourite tourist spot</option>
					<option vlaue="Name of your best friend">Name of your best friend</option>
					<option value="What is your favourite book">Your favourite book</option>
				</select>
			</div>
			<br> <br>
			<div>
				<label for="answer">Enter your Answer Here: <input id="answer" type="text" name="Answer" size="20" placeholder="Enter the answer here..." required></label><br> <br>
			</div>
			<br> <br> <input type="submit" class="w3-btn w3-black" value="submit" />
	</center>
	</form>
	</center>
</body>
</html>
