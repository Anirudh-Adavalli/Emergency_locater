<div id="headdiv">
    <img src="images/logo.jpg" style="margin:10px; float:left" height="100px" width="100px">
    <h1 id="title">Emergency Locator</h1>
    <h1 id="subtitle">SOS times</h1>
    </div>
<div id="menudiv">
  <ul class="navlist">
     <li class="navitem">
     <a href="index.jsp" class="navlistitem">Home</a>
     </li>
     <%
     try
     {
    	String s=session.getAttribute("user").toString();
    	if(s.equals("admin")){
    		%>
    		<li class="navitem">
            <a href="AFinrequest.jsp" class="navlistitem">Financial Requests</a></li>
            <li class="navitem">
            <a href="ADisaster.jsp" class="navlistitem">Add Disaster Info</a></li>
            <li class="navitem">
            <a href="logout.jsp" class="navlistitem">Logout</a></li>
    		<% 
    	}
     }
     catch(Exception e){
     %>
     <li class="navitem">
     <a  href="contact.jsp" class="navlistitem">Contact</a></li>
	<a href="alogin.jsp" style="position:absolute; right:10px; top:10px; background: black; color:white; padding:3px; text-decoration: none">Login as admin</a>     
  	 <%
     }
		%>
     </ul>
</div>