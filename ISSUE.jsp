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
  width:50%;
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
input
{

width:500px; height:30px;

}
#ab
{


margin-top: 60px;
margin-right: -390px;
margin-left: 270px;

}

</style>
 </head>
 <body>
  <% 
  
   if(((session.getAttribute("name"))!=null))
             { 
             %>
  
  
   <div style="margin-top:15px;">
  <hr noshade style="width:1000px; height:5px; color:red;"><center><h1 style="color:red">ISSUE_BOOKS</h1></center></hr>
   <hr noshade style="width:1000px; height:5px;"></hr>
   </div>

  
   <%
         try
             {
             
              
             Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lib","root",null);             
           PreparedStatement st = con.prepareStatement("insert into mem values (?,?,?,?,?,?,?,?)");
            PreparedStatement st1 = con.prepareStatement("insert into mem values (?,?,?,?,?,?,?,?)");
           
           %>
           
           
           
           
          <%   ResultSet rs=st.executeQuery("select distinct B_NAME from books");
          
           
          
          %>
          <div id="ab">
         <form action="IssueHendel.jsp" method="post"> 
          <table>
          <tr>
          <th>
          <h4> DETAIL OF BOOKS:</h4></th>
          <th style="width:500px; height:30px;">
          <select style="width:500px; height:30px;" name="books" onchange="showCustomer(this.value)">
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
<div id="txtHint"></br></br></div>
            
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
  xhttp.open("GET", "ajaxserver.jsp?q="+str, true);
  xhttp.send();
}


function show(str) {
  var xhttp;    
  if (str == "") {
    document.getElementById("abc").innerHTML = "";
    return;
  }
  xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (xhttp.readyState == 4 && xhttp.status == 200) {
      document.getElementById("abc").innerHTML = xhttp.responseText;
    }
  };
  xhttp.open("GET", "ajaxissue.jsp?q="+str, true);
  xhttp.send();
}


</script>
<%   ResultSet rs1=st1.executeQuery("select distinct B_NAME from books"); %>
<table>

<tr>
          <th>
          <h4> SELECT BOOK NAME:</h4></th>
          <th>
          <select style="width:500px; height:30px;" name="books" onchange="show(this.value)">
          <option value=""><center>Select books:</center></option> 
           <% 
         
            while(rs1.next())
            {%>
   
           <option value="<%= rs1.getString(1) %>"> <%= rs1.getString(1) %></option>
            
            <% } %>
            </select>
            </th>
            </tr>
 
  <tr>
  <th >SELECT BOOK ID:</th>
  <td id="abc" style="text-align: left"><input type="text" name="bid" size="16" required></td>
  </tr>

<tr>
<th style="text-aligh:left"> ENTER USER ID:</th>
<td style="text-aligh:left"> <input type="text" name="uid" size="16" required></td>
</tr>
<tr>
<th style="text-aligh:left"> DATE OF ISSUE:</th>
<td style="text-aligh:left"> <input type="date" name="doi" size="16" required></td>
</tr>
<tr>
<th style="text-aligh:left"> DATE OF EXPIRY:</th>
<td style="text-aligh:left"> <input type="date" name="doe" size="16" required></td>
</tr>

</br>
</table>
</br>
</br>
<input  style="background-color:green; color:white; width:750px; height:40px;" type="submit" value="ISSUE">
</form> 
</div>   
       
          
            
         <%  }
           
                       
              catch(Exception e){e.printStackTrace();} 
              }
              
   else
   {
   response.sendRedirect("admin.html");
  
   
   }
              
              %>
           

 </body>
</html>              

