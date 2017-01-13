<%@ page language="java" import="java.sql.*" pageEncoding="ISO-8859-1"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
  <body>
 
   <%
     
            //HttpSession session=request.getSession();  
           // session.invalidate(); 
            session.setAttribute("name",null);
           %>
    <h1><font color="Red"> you are successfully logged out....</font></h1>
  </body>
</html>
