<%@ page language="java" import="java.sql.*" pageEncoding="ISO-8859-1"%>
<%@ page import = "java.lang.*" %>




<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <style>
  table
  {
  width:100%;
  
  }
  table tr:nth-child(even)
  {
  
  
  
   background-color:#eee;
  
  }
  table tr:nth-child(odd)
  {
  
 
  
   background-color:#fff;
  
  }
  
  table ,th,td 
  {
  border-collapse:collapse;
  border:1px solid balck;
  padding:10px;
  
  }
  table th
  {
  background-color:black;
  color:white;
  
  
  }
  </style>
  </head>
    
  <body>
  <%! String s1="";
  String s2="";
  String s3="";
  String s4="";
  
  
  
  %>
 
   <%

             try
             {
              
             Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lib","root",null);
	
             
           PreparedStatement st = con.prepareStatement("insert into mem values (?,?,?,?,?,?,?,?)");
            s2 = request.getParameter("BOOK");%>
            <h1>TOTAL BOOKS ARE:</h1>
         
            
          <%   ResultSet rs=st.executeQuery("select * from books where B_NAME='"+s2+"' ");%>
          
    <table border=2><tr><th>BNAME</th><th>AUTHOR</th><th>PRICE</th><th>RACKNO</th><th>NOOFBOOKS</th><th>SUBJCODE</th></tr>
        
           <%  while(rs.next())
            { %>
           
            <tr>
<td> <%= rs.getString(1) %> </td> 
<td> <%= rs.getString(2) %> </td>
<td> <%= rs.getString(4)  %> </td>
<td> <%= rs.getString(5) %> </td>
<td> <%= rs.getString(6) %> </td> 
 <td> <%= rs.getString(7) %> </td>
 </tr>
            
            <% } %>
            </table>
           
           
           
            
          
            
         <%  }
           
                       
              catch(Exception e){e.printStackTrace();} %>
           
</br></br></br></br><h4>TO GO BACK MAIN MENU CLICK <a href="memlogin.jsp"><span style="color:red">HERE</span></a></h4>
 </body>
</html>              

