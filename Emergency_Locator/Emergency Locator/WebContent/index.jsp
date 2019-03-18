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
<h1>Emergency Locator-SOS Times</h1>
<h2>
	This application helps people in emergency situations by providing easy access to emergency services like Hospitals, Blood Banks, Financial Aid and Disaster help.
	Its easy access help the user in finding relevent informaiton in fraction of seconds.
</h2>
</div>
<%@include file="footer.jsp" %>
<script>
<%
	try{
		String msg = request.getParameter("msg");
		if(msg.equals("adscs"))
		{
			%>alert("Information Saved Successfully!");<%
		}
	}
	catch(Exception e){}

%>
</script>
</body>
</html>