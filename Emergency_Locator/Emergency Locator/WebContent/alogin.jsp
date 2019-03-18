<!DOCTYPE html> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="js/functions.js"></script>
<link rel="stylesheet" href="style/style.css">
<link rel="icon" href="images/logo.jpg">
</head>
<body>
<%@include file="header.jsp" %>
<h1></h1>
<h1></h1>
<h1></h1>
<h1></h1>
<div style="width:1024px; margin:0 auto; margin-top:100px;">
<div style="width:300px; text-align:center; float:left;">
<a class="navlistitem1" href="Medical.jsp" method ="post">Medical Services</a><br><br>
<a class="navlistitem1" href="Finance.jsp">Finance Aid</a><br><br>
<a class="navlistitem1" href="Bloodbank.jsp">Blood Bank</a><br><br>
<a class="navlistitem1" href="Disaster_Hit.jsp">Disaster Help</a><br><br> 
</div>
<center>
<form action ="AdminLoginServlet" method="post">
<h2>Admin Login Form</h2>
<b>Login id:</b> <input type="text" value="" name="mail"><br><br>
<b>Password:</b> <input type="password" value="" name="pass"><br><br>
<input type="submit" value="submit">
</form>
</center>

</div>
</body>
</html>