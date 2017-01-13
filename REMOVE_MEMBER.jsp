<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
</head>

 <%
  
  if(((session.getAttribute("name"))!=null))
             { 
             %>
  <body bgcolor=#eeeeee text=navy>
 
<h1 align=center>REMOVE_MEMBER_SHIP</h1>
<p>
<p>
<p>
<form action="REMOVE_MEMBER1.jsp" method="post">
&nbsp &nbsp  MEMBER_ID:<input type=text size=15 name=mid required>
<p>
<h2 align=center><input type=submit name=s1 value="REMOVED"></h2>
</form>

<h2 align=center><input type="reset" name=s2 value= "CANCEL">

</body>
<%
  }
  else
             {
            
             response.sendRedirect("admin.html");
             }

   %>
  

</html>
