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
String s=request.getParameter("q");

if(s==null){
out.print("Please enter ");
}else{
//int id=Integer.parseInt(s);
//out.print(id);
try{
  
    Class.forName("com.mysql.jdbc.Driver");
  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lib","root",null);
	
PreparedStatement ps=con.prepareStatement("select * from books where B_NAME=?");
//ps.setInt(1,id);
ResultSet rs=ps.executeQuery("select * from bookS where B_NAME='"+s+"' ");
%>
<table>
</br>
<tr>
<th>BOOK_NAME</th>
<th>AUTHOR_NAME</th>

<th>DATE_OF_ARR</th>
<th>PRICE</th>
<th>RACK_NO</th>
<th>NO_OF_BOOKS</th>


</tr>
<%
while(rs.next()){
%>
<tr>
<td> <%= rs.getString(1) %> </td> 
<td> <%= rs.getString(2) %> </td>
<td> <%= rs.getString(3)  %> </td>
<td> <%= rs.getString(4) %> </td> 
<td> <%= rs.getString(5) %> </td>
<td> <%= rs.getString(6)  %> </td>


 
 </tr>


<%
}  %>
</table>
<%
con.close();
}catch(Exception e){e.printStackTrace();}
}
%>
</body>
</html>