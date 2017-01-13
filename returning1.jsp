<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<body bgcolor=green text=wheat>

<%
  
  if(((session.getAttribute("name"))!=null))
             { 
             %>
<h1 align=center>RETURN OF BOOKS</h1>
<form action="returning.jsp" method="post">
<p>

Id No:</br><input type=text size=15 name=uid></br></br>
BOOK_ID_NO:</br><input type=text size=15 name=bid></br></br>

<p>
Date Of Issue:</br><input type="date" size=14 name=doi></br></br>
Date Of Expiry:</br><input type="date" size=14 name=doe></br></br>
<p>
<h2 align=right><input type=submit name=s1 value="RETURNING">
</form>

<%
  }
  else
             {
            
             response.sendRedirect("admin.html");
             }
 
   %>


</body>
</head>
</html>
