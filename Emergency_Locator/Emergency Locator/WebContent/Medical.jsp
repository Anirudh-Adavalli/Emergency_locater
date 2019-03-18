<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="Green">
<center>
<form action ="Medical.jsp" method="post">
<b>Either enter City or Name of blood bank to search by name :</b><br>
<input type="text" name="city" value=""><br>
<input type="submit" value="submit"><br>
</form>
<%
	try{
		String city = request.getParameter("city");
		if(city.length()>0)
		{
			%>
			<iframe height=500 width=800 src="http://maps.google.com?q=Hospitals+at+<%=city%>">
			</iframe>
			<%
		}
	}
	catch(Exception e){
		%>
		<iframe height=500 width=800 src="http://maps.google.com?q=Hospitals+kompally+Hydeabad">
		</iframe>
		<%

	}
%>


</center>
</body>
</html>