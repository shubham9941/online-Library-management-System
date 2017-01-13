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
 
  <body>
  
   <%
  
  if(((session.getAttribute("name"))!=null))
             { 
             %>
  <div style="margin-top:15px;">
  <hr noshade style="width:1000px; height:5px; color:red;"><center><h1 style="color:red">RETURN_BOOKS</h1></center></hr>
   <hr noshade style="width:1000px; height:5px;"></hr>
   </div>
  <%  try
   {		
   
             
             Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lib","root",null);             
           PreparedStatement st = con.prepareStatement("insert into mem values (?,?,?,?,?,?,?,?)");
                       
            ResultSet rs=st.executeQuery("select distinct ID_NO from issue");
            
           
           %>
           <div id="abc">
         <form action="returning.jsp"> 
          <table>
          <tr>
          <th style="width:190px;  ">
          <h4> SELECT_USER_ID:</h4></th>
          <th style="width:500px;">
          <select style="height:30px; width:500px; float:right;" name="uid" onchange="showCustomer(this.value)">
          <option value=""><center>Select Id:</center></option> 
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
  xhttp.open("GET", "Special_Return_ajax.jsp?mid="+str, true);
  xhttp.send();
}

</script> 
<%
}
catch(Exception e)
{


} %>
   
   <%
  }
  else
             {
            
             response.sendRedirect("admin.html");
             }
 
   %>
   
   
    
  </body>
  
  
</html>
