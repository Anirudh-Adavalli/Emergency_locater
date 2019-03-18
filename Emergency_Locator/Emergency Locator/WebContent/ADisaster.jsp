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
<form style="width:80%; margin-left:50px;" action="adisaster" method="post">
<fieldset>
<legend><h1>Disaster Info</h1></legend>
<table align=center style="margin:50px">
	<tr>
		<td>
            <label for="name">Name:</label>
        </td>
        <td>    
            <input id="name" title="Title for the disaster info must contain 6 characters" name="name" value="" required  pattern="^\S{6,}$"  aria-required="true" aria-describedby="name-format">
        </td>
    </tr>
    <tr>
		<td>
            <label for="area">Area:</label>
        </td>
        <td>    
            <input id="area" title="Area of Disaster place must contain 3 characters" name="area" value="" required  pattern="^\S{3,}$"  aria-required="true" aria-describedby="name-format">
        </td>
    </tr>
    <tr>
		<td>
            <label for="city">City:</label>
        </td>
        <td>    
            <input id="city" title="City must contain 3 characters" name="city" value="" required  pattern="^\S{3,}$"  aria-required="true" aria-describedby="name-format">
        </td>
    </tr>
    <tr>
		<td>
            <label for="state">State:</label>
        </td>
        <td>    
            <input id="state" title="State must contain 2 characters" name="state" value="" required  pattern="^\S{2,}$"  aria-required="true" aria-describedby="name-format">
        </td>
    </tr>
    <tr>
		<td>
            <label for="conper">Contact Person:</label>
        </td>
        <td>    
            <input id="conper" title="FirstName Lastname" name="conper" value="" required  pattern="[A-Za-z-0-9]+\s[A-Za-z-'0-9]+" aria-required="true" aria-describedby="name-format">
        </td>
    </tr>
    <tr>
		<td>
            <label for="connum">Contact No:</label>
        </td>
        <td>    
            <input id="connum" name="connum" type="number" pattern="^\S{10,10}$" onchange="this.setCustomValidity(this.validity.patternMismatch ? 'Must have at least 10 digits' : '');" placeholder="Contact No." required min="1111111111" max="9999999999">
        </td>
    </tr> 
	<tr>
		<td colspan="2" align="center">
		<input type ="submit" value="Submit">
		</td>
	</tr>
</table>
</fieldset>
</form>
</div>
<script>
<%
	try{
		String msg = request.getParameter("msg");
		if(msg.equals("adfld"))
		{
			%>alert("Check Fields and retry again!");<%
		}
	}
	catch(Exception e){}
%>
</script>

</body>
</html>