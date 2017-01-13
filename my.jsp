<%@ page language="java" import="java.sql.*" pageEncoding="ISO-8859-1"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
  <body>
   <%
   try
   {
    Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lib","root",null);
                    

            String str1 = request.getParameter("uname");
            String str2 = request.getParameter("pword");
            int c=0;
           // int st2 = Integer.parseInt(request.getParameter("pword"));
           
            
             Statement  st=con.createStatement();
             Statement  st1=con.createStatement();
              ResultSet rs = st.executeQuery("select * from mem");
              ResultSet rs1 = st1.executeQuery("select * from admin");
              while(rs1.next())
              {
              String un=rs1.getString("USR_NAME");
              String pass=rs1.getString("PASSWORD");
              if(un.equals(str1)&&pass.equals(str2))
              {
                
        session.setAttribute("name",str1);  //STARTING OF SESSION
        
        if(session.getAttribute("name")==null)
        {
        c=0;
        }
        else
        {
              response.sendRedirect("HOME1.jsp");
              c++;
              break;
              }
              }
              }
              while(rs.next())
              {
              String un=rs.getString("ID_NO");
              String pass=rs.getString("PASSWORD");
               if(un.equals(str1)&&pass.equals(str2))
              {
              
              session.setAttribute("name",str1); 
              response.sendRedirect("memlogin.jsp");
              c++;
              break;
              }
              }
              if(c==0)
              {
              
              response.sendRedirect("admin.html");
              
              }
              
               rs.close();
               rs1.close();
              }
              
	
	/*if((st2)==12345)
{ 

response.sendRedirect("home.html");


      }
      else if((st2)==23456)
      {
      
      response.sendRedirect("memlogin.html");
      
      }
else
{  


response.sendRedirect("admin.html");

   }
   }*/
  catch(Exception ex)
  {
  ex.printStackTrace();
  out.println("exception");
  } %> 
            
            
      </body>    
</html>

