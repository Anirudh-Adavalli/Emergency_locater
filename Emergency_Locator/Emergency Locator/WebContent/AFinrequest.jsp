<!DOCTYPE html> 
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mrec.dao.DBMan"%>
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
<table border="5">
<tr>
<th><b>S.No</b></th>
<th><b>User Name</b></th>
<th><b>Email id</b></th>
<th><b>Contact Number</b></th>
<th><b>Address</b></th>
<th><b>City</b></th>
<th><b>PIN Code</b></th>
<th><b>Amount</b></th>
</tr>
<%
	int i=0;
	ResultSet rs = DBMan.getFinRequests(); 
	while(rs.next())
	{
		i++;
		%>
			<tr>
				<td><%=i%>.</td>
				<td><%=rs.getString(1)%></td>
				<td><%=rs.getString(2)%></td>
				<td><%=rs.getString(3)%></td>
				<td><%=rs.getString(4)%></td>
				<td><%=rs.getString(5)%></td>
				<td><%=rs.getString(6)%></td>
				<td><%=rs.getString(7)%></td>
			</tr>
		<%	
	}
	if(i==0)
	{
		%>
			<tr>
				<td colspan="8"><h1>Sorry, No Financial request available in the database.</h1></td>
			</tr>
		<%
	}
	
%>
</table>
</div>
</body>
</html>