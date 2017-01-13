<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
 <HEAD>
  <TITLE> New Document </TITLE>
  <link type="text/css" rel="stylesheet" href="home.css" />
 </HEAD>

 <BODY>
  <%
  
  if(((session.getAttribute("name"))!=null))
             { 
             %>
  <div id="menu">
  <ul>
  <li><a href="HOME1.jsp">HOME</a></li>
  <li><a href="members.jsp">MEMBERS</a>
  <ul>
  <li><a href="addmembers1.jsp">ADD_MEMBER</a></li>
  <li><a href="REMOVE_MEMBER.jsp">REMOVE_MEMBER</a></li>
  
  </ul>
  
  </li>
  <li><a href="books.jsp">BOOKS</a>
  <ul>
  
  <li><a href="addbooks1.jsp">ADD_BOOKS</li>
   <li><a href="REMOVED_BOOKS.jsp">REMOVE_BOOKS</li>
  
  </ul>
  </li>
  <li><a href="ISSUE.jsp">ISSUE</a></li>
  <li><a href="BOOKS_ISSUED.jsp">ISSUED_BOOKS</a></li>
  <li><a href="Special_Return.jsp">RETURN</a></li>
   <li style="float:right; border:0px;"><a href="LOGOUT.jsp">LOGOUT</a></li>
  
  </ul>
</div> 

<div id="navt">
<img src="library.jpg" width="1363" height="568">
</div> 

<div id="footer">
 hi this is library page 
</div>
<%
  }
  else
             {
            
             response.sendRedirect("admin.html");
             }
 
   %>
  
  
 </BODY>
</HTML>
