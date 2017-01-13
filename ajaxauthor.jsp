<%@ page import="java.sql.*"%>
<html>
  <head>
  <style>
  table ,th,td 
  {
  border-collapse:collapse;
  border:1px solid balck;
  padding:10px;
  
  }
 
  </style>
  </head>
    
  <body>

<%
String s=request.getParameter("p");

if(s==null){
out.print("Please enter ");
}else{
//int id=Integer.parseInt(s);
//out.print(id);
try{
  
    Class.forName("com.mysql.jdbc.Driver");
  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lib","root",null);
	
PreparedStatement ps=con.prepareStatement("select * from books where AUTHOR=?");
//ps.setInt(1,id);
ResultSet rs=ps.executeQuery("select AUTHOR from books where B_NAME='"+s+"' ");
%>
<select style="width:500px; height:30px;" name="author">
 
<%
while(rs.next()){
%>

<option> <%= rs.getString(1) %>  </option>


<%
}  %>
</select>

<%
con.close();
}catch(Exception e){e.printStackTrace();}
}
%>
</body>
</html>