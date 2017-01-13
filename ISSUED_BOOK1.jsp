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
<h1 align=center>ISUUED_BOOK</h1>
<p>
<p>
<p>
<form action="ISSUED_BOOK.jsp" method="post">
&nbsp &nbsp  MEMBER_ID:<input type=text size=15 name=mid required>
<p>
<h2 align=center><input type=submit name=s1 value="SUBMIT"></h2>
</form>
<form action="ISSUED_BOOK.html">
<h2 align=center><input type="submit" name=s2 value= "CANCEL">
</form>
</body>
<%
  }
  else
             {
            
             response.sendRedirect("admin.html");
             }
   %>
  
</html>
