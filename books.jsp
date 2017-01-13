<%@ page language="java" import="java.sql.*" pageEncoding="ISO-8859-1"%>


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
     <%  
     if(((session.getAttribute("name"))!=null))
     {
          
	try
             {
              
              Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lib","root",null);
          

            Statement  st=con.createStatement();
              ResultSet rs = st.executeQuery("select * from books ORDER BY B_NAME");
              
              out.println("Currently existing books are"); %>
              
<table border=2><tr><th>BNAME</th><th>AUTHOR</th><th>DATEOFARR</th><th>PRICE</th><th>RACKNO</th><th>NOOFBOOKS</th><th>SUBJCODE</th><th></th></tr>
            <%  while(rs.next()) { %>
              
<tr>
<td> <%= rs.getString(1) %> </td> 
<td> <%= rs.getString(2) %> </td>
<td> <%= rs.getString(3)  %> </td>
<td> <%= rs.getString(4) %> </td>
<td> <%= rs.getString(5) %> </td> 
 <td><%= rs.getString(6) %> </td> 
<td> <%= rs.getString(7) %> </td>

 <td style="text-align:center"><img src="bimg/booksimg.png "height="50px" width="60px"></td>

 </tr>

            <%  }
             
              st.close();
              rs.close();
              con.close();
             }
             catch(Exception ex){ex.printStackTrace();}
             }
             else
             {
          
             response.sendRedirect("admin.html");
             
             }
             
             
              %>
  
</body>
</head>

             


