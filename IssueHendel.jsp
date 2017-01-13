<%@ page language="java" import="java.sql.*" pageEncoding="ISO-8859-1"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
  <body >
  <%! int c = 0; %>
  <%! String bn1 = ""; %>
  <%! String ban1 = ""; %>
  <%! int k = 0; %>
   <%
 	try
           {
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lib","root",null);
            PreparedStatement stt = con.prepareStatement("insert into issue values (?,?,?,?)");
            PreparedStatement stt1 = con.prepareStatement("insert into issue values (?,?,?,?)");
            PreparedStatement stt2 = con.prepareStatement("insert into issue values (?,?,?,?)");
            PreparedStatement stt3 = con.prepareStatement("insert into issue values (?,?,?,?)");
            PreparedStatement stt4 = con.prepareStatement("insert into issue values (?,?,?,?)");
            PreparedStatement stt5 = con.prepareStatement("select * from mem where ID_NO=?");
            String st1 = request.getParameter("uid");
            String st2 = request.getParameter("bid");
            String st3 = request.getParameter("doi");
            String st4 = request.getParameter("doe");
            String sh="";
             //float a=Float.parseFloat( request.getParameter("bid"));
            ResultSet rs = stt.executeQuery("select * from totalbook where B_CODE='"+st2+"'");
            
            ResultSet RR = stt5.executeQuery("select * from mem where ID_NO='"+st1+"'");
            while(RR.next())
            {
            sh=RR.getString(2);
            }
            ResultSet rs1 = stt1.executeQuery("select * from mem ");
            //ResultSet RSS = stt3.executeQuery("select * from books where B_CODE='"+st2+"'");
           float j=Float.parseFloat( request.getParameter("uid"));
            while(rs1.next())
            {
            float t=Float.parseFloat( rs1.getString("ID_NO"));
            
           if(t==j)
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
           
           while(rs.next())
           {
           bn1=rs.getString(1);
            ban1=rs.getString(2);
          
           }
           ResultSet ABC=stt4.executeQuery("select * from books where B_NAME='"+bn1+"'and AUTHOR='"+ban1+"' ");
           
          
           while(ABC.next())
           {
            
           String bn=ABC.getString(1);
           String ban=ABC.getString(2);
           //String bid=rs.getString(2);
           int N=Integer.parseInt( ABC.getString("NO_OF_BOOKS"));
          
          k =stt2.executeUpdate("insert into issue values('"+st1+"','"+st2+"','"+bn+"','"+st3+"','"+st4+"','"+ban+"','"+sh+"')");
            if(k >0)
            {
            // out.println("The data is added successfully");
              %><img src="bimg/SUCCESS.jpg">
             
              <h1>Book is issue successfully</h1>
              
              <% 
             
            N=N-1;
            int u=stt2.executeUpdate("update books set NO_OF_BOOKS='"+N+"'  where B_NAME ='"+bn+"' and AUTHOR ='"+ban+"' ");
             int k =stt2.executeUpdate("delete from totalbook where B_CODE ='"+st2+"'");
             }
            else
            {
             out.println("The data is not added");
           }
 
           }
           
           
           
            ABC.close();
            con.close();
           
           }
           else
           {
           
           out.println("plz enter the correct id....");
           
           }
       rs.close();
        rs1.close();
        %>
        
        <h4> TO GO BACK MENU CLICK<span> <a href="HOME1.jsp">HERE</a></span></h4>
        <%
        
           }
           catch(Exception ex){out.println(ex);}
          
   
    %>
  </body>
</html>
