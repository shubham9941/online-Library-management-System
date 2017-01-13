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
  <%! String st2="";%>
  <%! int c = 0; %>
   <%
 try
           {
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lib","root",null);
            //String st1 = request.getParameter("mid");
            String st1= (String)(session.getAttribute("name"));
            PreparedStatement st = con.prepareStatement("insert into issue values (?,?,?,?)");
            PreparedStatement stt = con.prepareStatement("insert into issue values (?,?,?,?)");
            ResultSet rs1 = st.executeQuery("select * from mem");
           c=0;
             while(rs1.next())
            	{
                  st2=rs1.getString("ID_NO");
                  if(st2.equals(st1))
                  {
                  c++;
                  break;
                  }
                  else
                  {
                    continue;
                  }
                    }
                   if(c!=0)
                   {
                   
           ResultSet rs = stt.executeQuery("select * from mem where ID_NO='"+st1+"'"); %>
      
           
        <h1>MEMBERS DETAILS ARE:</h1>
    <table border=2>
    <tr>
    <th>ID_NO</th><th>NAME</th><th>ADDRESS</th><th>DATE_OF_ISSUED</th><th>DATE_OF_EX</th>    
    
    
    </tr>
 
      
      
      <%
           while(rs.next())
           {
           %>
           
            <tr>
<td> <%= rs.getString(1) %> </td> 
<td> <%= rs.getString(2) %> </td>
<td> <%= rs.getString(3)  %> </td>
<td> <%= rs.getString(4) %> </td>
<td> <%= rs.getString(5) %> </td> 
 
  </tr>
  
            
            <% }
            
             rs.close();
            %>
             </table>
  
          
           
     <%      
           }
           else
           {
           out.println("plz enter the correct id.......");
           
           }
                  
                  
                  
                  
                     
rs1.close();
   st.close();
   stt.close();         
            
            
            
            
         // if(str.equalsIgnoreCase(st2)          
            }
           catch(Exception ex){out.println(ex);}
          
   
    %>
    </br></br></br></br><h4>TO GO BACK MAIN MENU CLICK <a href="memlogin.jsp"><span style="color:red">HERE</span></a></h4>
  </body>
</html>
