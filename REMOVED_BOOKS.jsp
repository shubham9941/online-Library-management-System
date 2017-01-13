<%@ page language="java" import="java.sql.*" pageEncoding="ISO-8859-1"%>
<%@ page import = "java.lang.*" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <style>
  body
  {  
  background-color:#eeeeee;
  }
 
table,th,td {
  border : 1px solid black;
  border-collapse: collapse;
}
th,td {
  padding: 5px;
}
h1
{
text-align:center;

}
h4
{

margin-top:0px;
margin-bottom:0px;

}
#abc
{
margin-top:85px;
margin-left:200px;
background-color:#eeeeee;

}
</style>
 </head>
 
  <%
  
  if(((session.getAttribute("name"))!=null))
             { 
             %>

  <body>
  <div style="margin-top:15px;">
  <hr noshade style="width:1000px; height:5px; color:red;"><center><h1 style="color:red">REMOVED_BOOKS</h1></center></hr>
   <hr noshade style="width:1000px; height:5px;"></hr>
   </div>
  <%  try
   {		
   
             
             Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lib","root",null);             
           PreparedStatement st = con.prepareStatement("insert into mem values (?,?,?,?,?,?,?,?)");
            PreparedStatement st1 = con.prepareStatement("insert into mem values (?,?,?,?,?,?,?,?)");
           
            ResultSet rs=st.executeQuery("select distinct B_NAME from books");
            ResultSet rs1=st1.executeQuery("select distinct B_NAME from books");
           
           
           %>
           <div id="abc">
         <form action="REMOVED_BOOKS_HANDLE.jsp" method="post"> 
          <table>
          <tr>
          <th style="width:190px;  ">
          <h4> DETAIL_OF_BOOKS:</h4></th>
          <th style="width:500px;">
          <select style="height:30px; width:500px; float:right;" name="books" onchange="showCustomer(this.value)">
          <option value=""><center>Select books:</center></option> 
           <% 
         
            while(rs.next())
            {%>
   
           <option value="<%= rs.getString(1) %>"> <%= rs.getString(1) %></option>
            
            <% } %>
            </select>
            </th>
            </tr>
            </table>           
            
            <br>
<div id="txtHint"></div>

</br>
</br>
<table>
<tr>
<td>SELECT_BOOK</td>
<td style="width:500px;">
<select style="height:30px; width:500px; float:right;" name="book"   onchange="showBooks(this.value)"   required>
<option value=""><center>Select books:</center></option>

<% 

   while(rs1.next())
            {%>
   
           <option value="<%= rs1.getString(1)%>"> <%= rs1.getString(1) %></option>
            
            <% } %>
 </select>
</td>
<tr>
<td>SELECT_AUTHOR_NAME</td>
<td id="m11">
<select style="height:30px; width:500px;" name="author" required>
<option value=""><center>Select Author:</center></option>

<% 
PreparedStatement st2 = con.prepareStatement("insert into mem values (?,?,?,?,?,?,?,?)");
           
            ResultSet rs2=st.executeQuery("select distinct AUTHOR from books");

   while(rs2.next())
            {%>
   
           <option value="<%= rs2.getString(1) %>"> <%= rs2.getString(1) %></option>
            
            <% } %>

</select>

</td>

</tr>
<tr><td>
QUANTITY_OF_BOOKS
</td>
<td style="width:500px">
<select style="width:500px;height:30px; " name="quantity" required>
<%
for(int i=1;i<=100;i++)
{ %>

<option><% out.println(i); %></option>

<% 
}
 %>
 </select>
</td>
</tr>
</table>
</br>
</br>
<input style="background-color:green; color:white; width:100px; height:48px; margin-left:800px;"type="submit" value="REMOVED">

</form>
</div>




            
<script>
function showCustomer(str) {
  var xhttp;    
  if (str == "") {
    document.getElementById("txtHint").innerHTML = "";
    return;
  }
  xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (xhttp.readyState == 4 && xhttp.status == 200) {
      document.getElementById("txtHint").innerHTML = xhttp.responseText;
    }
  };
  xhttp.open("GET", "ajaxserver1.jsp?q="+str, true);
  xhttp.send();
}



function showBooks(str) {
  var xhttp;    
  if (str == "") {
    document.getElementById("m11").innerHTML = "";
    return;
  }
  xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (xhttp.readyState == 4 && xhttp.status == 200) {
      document.getElementById("m11").innerHTML = xhttp.responseText;
    }
  };
  xhttp.open("GET", "ajaxauthor.jsp?p="+str, true);
  xhttp.send();
}




</script> 
<%
}
catch(Exception e)
{


} %>
   
   
   
    
  </body>
  
  <%
  }
  else
             {
            
             response.sendRedirect("admin.html");
             }
 
   %>
</html>
