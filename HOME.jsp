<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <style>
   #m001 {
 
    background-color:black;
    color:white;
    text-align:left;
    padding:5px;
}
#navt {
    
    background-color:#eeeeee;
    height:550px ;
    padding:5px;	      
}
#footer {
    background-color:black;
    color:white;
    clear:both;
    text-align:center;
   padding:5px;	 	 
}


ul#menu {
    padding: 0;
}

 



ul#menu li {
    display: inline;
    
}

ul#menu li a {
    background-color: black;
    color: white;
    padding:10px 25px;
    text-decoration: none;
    border-radius: 40px 4px 0 0;
    border-right:1px solid #bbb;
    
}


ul#menu li a:hover {
    background-color: orange;
}
#m001#menu#abcd
{
 text-align:right;

}
</style>
</head>
  <body>
  <%
  
  if(((session.getAttribute("name"))!=null))
             { 
             %>
    
  
  
<div id="m001">

<ul id="menu">
  <li><a  href="admin.html">HOME</a></li>
  <li><a href="members.jsp">MEMBERS</a></li>
  <li><a href="addmembers.html">ADD_MEMBERS</a></li>
  <li><a href="books.jsp">BOOKS</a></li>
<li><a href="addbooks.html">ADD_BOOKS</a></li>
  <li><a href="ISSUE.jsp">LENDING</a></li>
  <li><a href="returning.html">RETURNING</a></li>
  <li><a href="report.html">REPORT</a></li>
  <li id="abcd" ><a href="LOGOUT.jsp">LOGOUT</a></li>
</ul>
</div> 

<div id="navt">

<img src="library.jpg" width="1340" height="550">

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
  
  </body>
</html>
