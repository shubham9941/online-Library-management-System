<%@ page language="java" import="java.sql.*" pageEncoding="ISO-8859-1"%>
<%@ page import = "java.lang.*" %>




<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <style>
  .m001
  {

  border:3px solid green;
  height:300px;
  width:400px;
  padding:100px;
  padding-top:20px;
  margin: 50px 20px 0px 200px;
  background-color:#eeeeee;
  
  }
  #k001
  {
  height:200px;
  width:200px;
  border:2px solid red;
  padding-top:-30px;
   background-color:#112645;
margin: 0px 20px 0px 80px;
 
  
  
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
  
  if(((session.getAttribute("name"))!=null))
             { 
           



             try
             {
              
             Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lib","root",null);
	
             
           PreparedStatement st = con.prepareStatement("insert into mem values (?,?,?,?,?,?,?,?)");%>
           
           
            <form action="BookSelector1.jsp" method="post">
           
          <%   ResultSet rs=st.executeQuery("select distinct B_NAME from books");%>
          <div class="m001">
          <div id="k001">
          
          <img src="AKGEC.png" height=200 width=200 >
          
          </div>
          <h2> select book name:</h2>
          <select style="width:250px; height:30px" name="BOOK">
           <%  while(rs.next())
            { %>
           
            <option> <%= rs.getString(1) %></option>
            
            <% } %>
            </select>
            <input type="submit" value ="OK">
            </div>
            </form>
            
          
            
         <%  }
           
                       
              catch(Exception e){e.printStackTrace();
              }
              }
              
              else
              {
               response.sendRedirect("admin.html");
              
              
              }
              
              
              
               %>
           

 </body>
</html>              

