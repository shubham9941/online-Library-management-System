<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<head>
</head>
<body bgcolor=#eeeeee text=navy>

 <%
  
  if(((session.getAttribute("name"))!=null))
             { 
             %>

<h1 align=center> Stock Maintenance</h1>
<p>
<p>
<p>
<form action="addbooks.jsp" method="post">
&nbsp &nbsp  Book Name:<input type=text size=15 name=bn required>

<p>
&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp Author:<input type=text size=15 name=aut required> &nbsp &nbsp &nbsp &nbsp
Date Of Arrival:<input type="date" size=15 name=doa  required>
<p>
&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp Price:<input type=text size=15 name=pr required>
&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp Rack No:<input type=text size=15 name=rn  required>
<p>
&nbsp  No Of Books:<input type=text size=15 name=nob required>
&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp Subject Code:<input type=text size=15 name=sc  required>
<p>
<h2 align=center><input type=submit name=s1 value="ADD"></h2>
</form>
<form action="addbooks.html">
<h2 align=center><input type="submit" name=s2 value= "CANCEL">
</form>

<%
  }
  else
             {
            
             response.sendRedirect("admin.html");
             }
    %>
 </body>

 </html>
