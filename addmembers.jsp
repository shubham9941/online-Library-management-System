<%@ page language="java" import="java.sql.*" pageEncoding="ISO-8859-1"%>
<%@ page import = "java.lang.*" %>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
  <body>
  <%!
  
  float f;
   %>
   <%

             try
             {
              
             Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lib","root",null);
	
             
           PreparedStatement st = con.prepareStatement("insert into mem values (?,?,?,?,?,?,?,?)");
           
              //String s1 = request.getParameter("idno");
              String s2 = request.getParameter("mname");
              String s3 = request.getParameter("maddress");
              String s4 = request.getParameter("doi");
              String s5 = request.getParameter("doe");
              //String s6 = request.getParameter("som");
              //String s7 = request.getParameter("tom");
              //String s8 = request.getParameter("amt");
              String s9 = request.getParameter("pass");
              String s10 = request.getParameter("rpass");
              
              if(s10.equals(s9))
              {
              
             // out.println("ya we reached");
              
             
               f=(float)Math.random()*10000;
               int t=(int)f;
	//StringBuffer obj=new StringBuffer(s2);
	//StringBuffer a= new StringBuffer (obj.substring(0,1));
		
		//a.append(t);
	
              
              int i = st.executeUpdate("insert into mem values('"+t+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s9+"')");
              if(i>0)
              {
              %>
             <img src="bimg/SUCCESS.jpg">
             
            <h2>Now you are member of this library...</h2>
                <%
               out.println("<h1>your id is="+t+"</h1>" );
               }
              else
              {
               out.println("data is not added");
               }
             }
             
             else
             {
             out.println("plz enter the correct password");
             
             }
             %>
            </br></br><H5>TO GO BACK MAIN MENU CLICK <a href="HOME1.jsp"><span style="color:blue">HERE</span></a></H5>
             <%
             con.close();
             }
              catch(Exception e){e.printStackTrace();} %>
           

 </body>
</html>              

