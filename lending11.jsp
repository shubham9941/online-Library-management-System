<%@ page language="java" import="java.sql.*" pageEncoding="ISO-8859-1"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
  <body>
  <%! int c = 0; %>
  <%! int j = 0; %>
  <%! int k = 0; %>
   <%
 try
           {
           
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lib","root",null);
            PreparedStatement st = con.prepareStatement("insert into issue values (?,?,?,?)");
            PreparedStatement st1 = con.prepareStatement("insert into issue values (?,?,?,?)");%>
                
            <% 
            ResultSet rs = st.executeQuery("select * from books"); 
              ResultSet rs1 = st1.executeQuery("select * from books"); %>
                     
          
           
           
   
       <form action="lendingHendel.jsp"> 
           ID NO: <input type="text" name ="idno" required ></br></br>
         
              select book name:
             <select style="width:150px; height:20px" name="bname">
        <%  while(rs.next())
            { %>
           
            <option> <%= rs.getString(1) %></option>
            
            <% } %>
            </select>
           </br></br></br>
           select author name:
           <select style="width:150px; height:20px" name="bauth">
        <%  while(rs1.next())
            { %>
           
            <option> <%= rs1.getString(3) %></option>
            
            <% } %>
           
           </select>
           </br></br>
           NO OF BOOKS:<input type="text" name ="nbks"></br></br>
        DATE OF ISUUE: <input type="date" name ="dissue"></br></br>
		DATE OF EXPIRY: <input type="date" name ="dexp"></br></br>  
		
		     
        <input type="submit" value="SUBMIT">     
            </form>
           

                <%  }
           catch(Exception ex){out.println(ex);}
          
   
    %>
  </body>
</html>
