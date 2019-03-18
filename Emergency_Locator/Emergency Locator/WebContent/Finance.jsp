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
<form style="width:80%; margin-left:50px;" action="addFinance" method="post">
<fieldset>
<legend><h1>Financial Information</h1></legend>
<table align=center style="margin:50px">
	<tr>
		<td>
            <label for="name">User Name:</label>
        </td>
        <td>    
            <input id="name" title="This field should contain atleast 3 characters" name="name" value="" required  pattern="^\S{3,}$"  aria-required="true" aria-describedby="name-format">
        </td>
    </tr>
    <tr>
		<td>
            <label for="email">Email:</label>
        </td>
        <td>    
            <input id="email" title="abc@mail.com" name="email" value="" required  pattern="^\S{10,}$"  aria-required="true" aria-describedby="name-format">
        </td>
    </tr>
    <tr>
		<td>
            <label for="contact">Contact:</label>
        </td>
        <td>    
            <input id="contact" title="" name="contact" value="" pattern="^\S{10,10}$" onchange="this.setCustomValidity(this.validity.patternMismatch ? 'Must have at least 10 digits' : '');"  placeholder="" required min="1111111111" max="9999999999">
        </td>
    </tr>
    <tr>
		<td>
            <label for="address">Address:</label>
        </td>
        <td>    
            <input id="address" title="This field should contain atlesat 6 characters" name="address" value=""   aria-required="true" aria-describedby="address-format">
        </td>
    </tr>
    <tr>
		<td>
            <label for="city">City:</label>
        </td>
        <td>    
            <input id="city" title="This field must atleast contain 3 characters " name="city" value="" required  pattern="^\S{3,}$"  aria-required="true" aria-describedby="name-format">
        </td>
    </tr>
    <tr>
		<td>
            <label for="pincode">Pin code:</label>
        </td>
        <td>    
            <input id="pincode" title="This field must contain 6 characters" name="pincode" value=""  required  pattern="^\S{6,}$"  aria-required="true" aria-describedby="name-format">
        </td>
    </tr> 
    <tr>
		<td>
            <label for="amount">Amount:</label>
        </td>
        <td>    
            <input id="amount" title="" name="amount" value="" pattern="^\S{4,}$" onchange="this.setCustomValidity(this.validity.patternMismatch ? 'Must have at least 4 digits' : '');"  placeholder="" required min="1000">
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