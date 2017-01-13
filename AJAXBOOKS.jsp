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
     
	try
             {
             String s1=null;
              String s2=null;
              s1 = request.getParameter("bname");
              s2 = request.getParameter("bauther");
              
              Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lib","root",null);
         ResultSet rs;

            Statement  st=con.createStatement();
            Statement  st1=con.createStatement();
            Statement  st2=con.createStatement();
             %>
             
            
            
            <%
            if(!s1.equals("") && !s2.equals(""))
            {
            out.println( s2);
            %>
             <table border=2><tr><th>BNAME</th><th>AUTHOR</th><th>DATEOFARR</th><th>PRICE</th><th>RACKNO</th><th>NOOFBOOKS</th><th>SUBJCODE</th></tr>
            
           <%
               rs = st.executeQuery("select * from books where B_NAME='"+s1+"' and  AUTHOR='"+s2+"' ");
             
               
                 while(rs.next()) { %>
              
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
              else if(!s1.equals("") && s2.equals(""))
              {
              out.println("hello111111111");
            ResultSet  rs1 = st1.executeQuery("select * from books where B_NAME='"+s1+"' ");
               
                    %>
            <table border=2><tr><th>BNAME</th><th>AUTHOR</th><th>DATEOFARR</th><th>PRICE</th><th>RACKNO</th><th>NOOFBOOKS</th><th>SUBJCODE</th></tr>
            
            <%   
                    
                    
                    
                              
                 while(rs1.next()) {
              out.println("hello");
               %>
<tr>
<td> <%= rs1.getString(1) %> </td> 
<td> <%= rs1.getString(2) %> </td>
<td> <%= rs1.getString(3)  %> </td>
<td> <%= rs1.getString(4) %> </td>
<td> <%= rs1.getString(5) %> </td> 
 <td><%= rs1.getString(6) %> </td> 
<td> <%= rs1.getString(7) %> </td>

 <td style="text-align:center"><img src="bimg/booksimg.png "height="50px" width="60px"></td>

 </tr>

            <%  }
             
              st.close();
              rs1.close();
                          con.close();
               
               
              
              } 
              
               else if(s1.equals("")&&!s2.equals(""))
              {
              
          ResultSet   rs2 = st2.executeQuery("select * from books where AUTHOR='"+s2+"' "); 
             
           %>
            <table border=2><tr><th>BNAME</th><th>AUTHOR</th><th>DATEOFARR</th><th>PRICE</th><th>RACKNO</th><th>NOOFBOOKS</th><th>SUBJCODE</th></tr>
            
            <%   
             
                            
                 while(rs2.next()) { %>
              
<tr>
<td> <%= rs2.getString(1) %> </td> 
<td> <%= rs2.getString(2) %> </td>
<td> <%= rs2.getString(3)  %> </td>
<td> <%= rs2.getString(4) %> </td>
<td> <%= rs2.getString(5) %> </td> 
 <td><%= rs2.getString(6) %> </td> 
<td> <%= rs2.getString(7) %> </td>

 
 </tr>

            <%  }
           
             
              st2.close();
              rs2.close();
                          con.close();
             
              
              } 
               %>
              

 
          <%    }
             catch(Exception ex)
             {
             ex.printStackTrace();
             }
             
            
             
             
              %>
  
</body>
</head>

             


