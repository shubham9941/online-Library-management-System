<%@ page language="java" import="java.sql.*" pageEncoding="ISO-8859-1"%>
<%@ page import = "java.lang.*" %>




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
  <%! String s1="";
  
  String s3="";
  String s4="";
  
  
  
  %>
 
   <%

             try
             {
              
             Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lib","root",null);
	
             
           PreparedStatement st = con.prepareStatement("insert into mem values (?,?,?,?,?,?,?,?)");
           PreparedStatement st1 = con.prepareStatement("insert into mem values (?,?,?,?,?,?,?,?)");
           PreparedStatement st2 = con.prepareStatement("insert into mem values (?,?,?,?,?,?,?,?)");
            PreparedStatement st3 = con.prepareStatement("insert into mem values (?,?,?,?,?,?,?,?)");
          
            String s= (String)(session.getAttribute("name"));
          
            String a="";
          
           ResultSet rs11=st3.executeQuery("select * from mem where ID_NO='"+s+"' ");
           while(rs11.next())
           {
          a= rs11.getString(1);
           
           }
          // out.println(a);
           
         int c=0,k=0;
            
            //ResultSet rs=st.executeQuery("select * from issue where ID_NO='"+s3+"' ");
          
          
           ResultSet rs2=st2.executeQuery("select * from mem where ID_NO='"+s+"' ");
         
         if(rs2.next())
           {
           k++;
           
           } 
           
            if(k!=0)
           {
             ResultSet rs1=st1.executeQuery("select * from issue where ID_NO='"+s+"' ");
           if(rs1.next())
           {
           c++;
           
           }
           
         
           if(c!=0)
           {
          ResultSet rs=st.executeQuery("select * from issue where ID_NO='"+a+"' ");
          
          %>
           <h1>TOTAL BOOKS ARE:</h1>
    <table border=2><tr><th>BNAME</th><th>AUTHOR</th><th>BCODE</th><th>DATE_OF_ISSUED</th><th>DATE_OF_RETURN</tr>
        
           <%  while(rs.next())
            { %>
           
            <tr>
<td> <%= rs.getString(3) %> </td> 
<td> <%= rs.getString(6) %> </td>
<td> <%= rs.getString(2)  %> </td>
<td> <%= rs.getString(4) %> </td>
<td> <%= rs.getString(5) %> </td> 
  </tr>
  
            
            <% }%>
             </table>
       <%   
       
         }
         
       else
       { %>
       
        <h1>NO ISSUED BOOKS...</h1>
       
  <%     }
  			}
  			else
  			{
  			
  			out.println("plz enter the correct id....");
  			
  			}
            
            
         
        // con.close();
          }
           
                       
              catch(Exception e){e.printStackTrace();} %>
           
	</br></br></br></br><h4>TO GO BACK MAIN MENU CLICK <a href="memlogin.jsp"><span style="color:red">HERE</span></a></h4>
 </body>
</html>              

