<%@ page language="java" import="java.sql.*" pageEncoding="ISO-8859-1"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <style>
  </style>
  </head>
    
  <body>
  
 
   <%

             try
             {
              
            
          String  s1 = request.getParameter("book");
          String  s2 = request.getParameter("author");
          String  s3 = request.getParameter("quantity");
          int q=0;
          int t=0;
          int n=0;
          int i=1;
          
           Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lib","root",null);
	
             
           PreparedStatement st = con.prepareStatement("insert into mem values (?,?,?,?,?,?,?,?)");
            PreparedStatement st1 = con.prepareStatement("insert into mem values (?,?,?,?,?,?,?,?)");
             PreparedStatement st2 = con.prepareStatement("insert into mem values (?,?,?,?,?,?,?,?)");
             PreparedStatement st3 = con.prepareStatement("insert into mem values (?,?,?,?,?,?,?,?)");
            
           //ResultSet rs= st.executeQuery("select * from books where B_NAME='"+s1+"' and AUTHOR='"+s2+"' ");
            ResultSet rs=st.executeQuery("select * from books where B_NAME='"+s1+"'and AUTHOR='"+s2+"' ");
            while(rs.next())
            {
              q= Integer.parseInt(rs.getString("NO_OF_BOOKS"));
            
             
            n= Integer.parseInt(s3);
                  
             t=q-n;
            }
            
            if(t>=0)
            {
           
            int N=st1.executeUpdate("update books set NO_OF_BOOKS='"+t+"'  where B_NAME ='"+s1+"' and AUTHOR ='"+s2+"' ");
            if(N>0)
            {
            ResultSet rs1=st2.executeQuery("select * from totalbook where B_NAME='"+s1+"'and AUTHOR='"+s2+"' ");
            while(rs1.next())
            {
            
            if(i<=n)
            {
            int k =st3.executeUpdate("delete from totalbook where B_CODE ='"+rs1.getString(3)+"' ");
            i++;
            }
            else
            {
            break;
            }
            }
           %>
            <img src="bimg/SUCCESS.jpg">
           <h2>books are removed successfully</h2>
            <% 
            }
            else
            {
            out.println("books are not removed............");
            }
            
            
            }
            else
            {
            
            out.println("this quantity of books are not abilable....... only "+q+" books are abilable");
           
            }
             %>
         <h4> TO GO BACK MENU CLICK<span> <a href="HOME1.jsp">HERE</a></span></h4>
         <%
            }
         
         catch(Exception e){e.printStackTrace();} 
           %>
           
 </body>
</html>              

