<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>

  
  <head>
<style>
#m001 {
 
    background-color:black;
    color:white;
    text-align:center;
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
    padding:10px 80px;
    text-decoration: none;
    border-radius: 40px 4px 0 0;
}

ul#menu li a:hover { 
    background-color: orange;
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
  <li><a href="memlogin.jsp">HOME</a></li>
  
  <li><a href="BookSelector.jsp">BOOKS</a></li>


  <li><a href="ISSUED_BOOK.jsp">ISSUED_BOOK</a></li>
  <li><a href="membership.jsp">MEMBER_SHIP</a></li>
  <li style="float:right"><a href="LOGOUT.jsp">LOGOUT</a></li>
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
