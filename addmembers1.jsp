<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<head>
<style>
#m001
{
margin-top=800px;


}

 
table,th,td {
  border : 1px solid black;
  border-collapse: collapse;
}
th,td {
  padding: 5px;
  
}
input
{
height:30px;

}

</style>
</head>
<body bgcolor=#eeeeee text=navy>


<%
  
  if(((session.getAttribute("name"))!=null))
             { 
             %>
             
 <div style="margin-top:15px;">
  <hr noshade style="width:1000px; height:5px; color:red;"><center><h1 style="color:red">ADD_MEMBERS</h1></center></hr>
   <hr noshade style="width:1000px; height:5px;"></hr>
   </div>
 
<div id="m001" style="margin-top:60px; margin-left:210px;">
<form action="addmembers.jsp" method="post">
<table>
<tr>
<td>Name:</td>
<td style="width:500px;"><input style="width:500px; height:30px;" type=text  size=15 name=mname required></td>
 </tr>
 <tr>
 <td>Address:</td>
<td style="width:500px;"><input style="width:500px;" type=text size=15 name=maddress required></td>
 
 </tr>
 
  </tr>
 <tr>
 <td>Date Of Issue:</td>
<td style="width:500px;"><input style="width:500px;" type="date" size=15 name=doi required></td>
 
 </tr>
 
 <tr>
 <td>Date Of Expiry:</td>
<td style="width:500px;"><input style="width:500px;" type="date" size=15 name=doe required ></td>
 
 </tr>
 <tr>
 <td>PASSWORD:</td>
<td style="width:500px;"><input style="width:500px;" type="password" name=pass required></td>
 
 </tr>
 
 <tr>
 <td>RESET-PASSWORD:</td>
<td style="width:500px;"><input style="width:500px;" type="password" name=rpass required></td>
 
 </tr>

</table>
 

<h2 align=center><input style="background-color:green; color:white; width:100px; height:48px; margin-left:800px;" type=submit name=s1 value="ADD"></h2>
</form>
</div>
</body>
<%
  }
  else
             {
            
             response.sendRedirect("admin.html");
             }
   %>


 </html>
