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
String s=request.getParameter("mid");
 String a="";

if(s==null){
out.print("Please enter ");
}else{
//int id=Integer.parseInt(s);
//out.print(id);
try{
 
    Class.forName("com.mysql.jdbc.Driver");
  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lib","root",null);
	
PreparedStatement ps=con.prepareStatement("select * from books where B_NAME=?");
PreparedStatement ps1=con.prepareStatement("select * from mem where ID_NO=?");
//ps.setInt(1,id);
ResultSet rs=ps.executeQuery("select * from issue where ID_NO='"+s+"' ");
ResultSet rs1=ps1.executeQuery("select * from mem where ID_NO='"+s+"' ");
while(rs1.next())
{

a=rs1.getString(2);
}
%>
<table>
</br>
<tr>
<th>USER_NAME</th>
<th>BOOK_ID</th>
<th>BOOK_NAME</th>
<th>AUTHOR_NAME</th>

<th>DATE_OF_ISSUE</th>
<th>DATE_OF_RETURNING</th>
<th>RETURNING</th>


</tr>
<%
while(rs.next()){
%>
<tr>
<td><% out.println(a); %></td>
<td> <%= rs.getString(2) %> </td>
<td> <%= rs.getString(3)  %> </td>
<td> <%= rs.getString(6)  %> </td>
<td> <%= rs.getString(4) %> </td> 
<td> <%= rs.getString(5) %> </td>
<td>
<form action="returning.jsp">

<input type="hidden" value="<%= rs.getString(2) %>" name="bid" />
<input type="submit" value="return" />

</form>

</td>



 
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