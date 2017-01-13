<%@ page language="java" import="java.sql.*" pageEncoding="ISO-8859-1"%>
<%@ page import = "java.lang.*" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
  <body>
   <%

         if(((session.getAttribute("name"))!=null))
     {        

	try
           {
           
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lib","root",null);
           
            Statement st = con.createStatement();
             Statement st1 = con.createStatement();

            String str1 = request.getParameter("bn");
            //String str2 = request.getParameter("bc");
            String str3 = request.getParameter("aut");
            String str4 = request.getParameter("doa");
            String str5 = request.getParameter("pr");
            String str6 = request.getParameter("rn");
            String str7 = request.getParameter("nob");
            String str8 = request.getParameter("sc");
            
            
           
            //out.println("hello");
            int k = st1.executeUpdate("insert into books values('"+str1+"','"+str3+"','"+str4+"','"+str5+"','"+str6+"','"+str7+"','"+str8+"')");
           
            if(k>0)
            { 
            int n=Integer.parseInt(str7);
            
             while(n>0)
            {
            
          float f=(float)Math.random();
          
            
         
          int t = st.executeUpdate("insert into totalbook values('"+str1+"','"+str3+"','"+f+"')");
         
            n--;
            }
             %>
             <img src="bimg/SUCCESS.jpg">
             <h1> BOOKS ARE ADDED SUCCESSFULLY</h1></br>
             <h4>to go back menu click<span> <a href="HOME1.jsp">HERE</a></span></h4>
             <%
             }
            else
            {
             out.println("books are not added");
             }
           }
           catch(Exception ex){ex.printStackTrace();
           
           }
           }
           else
           {
           response.sendRedirect("admin.html");
           
           }
           
           
           
            %>
      </body>    
</html>

