
 <%@ page language="java" import="java.sql.*" pageEncoding="ISO-8859-1"%>

<html>
  <head>
  <style>
  </style>
  </head>
  <body>
  <%! String st2="";%>
  <%! int c = 0; %>
   <%
 try
           {
           int rs;
           
           int a=0;
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lib","root",null);
            String st1 = request.getParameter("mid");
            PreparedStatement st = con.prepareStatement("insert into issue values (?,?,?,?)");
            PreparedStatement stt = con.prepareStatement("insert into issue values (?,?,?,?)");
            PreparedStatement abc = con.prepareStatement("insert into issue values (?,?,?,?)");
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
               ResultSet RS =abc.executeQuery("select * from  issue ");  
               while(RS.next())
               {
               if(st1.equals(RS.getString("ID_NO")))
               {
               a=1;
               
               }
           
               }
               if(a!=1)
               {
            rs = stt.executeUpdate("delete from mem where ID_NO='"+st1+"'"); 
            
            if(rs>0)
            { %>
            <img src="bimg/SUCCESS.jpg">
            <h1>MEMBER HAS BEEN REMOVED SUCCESSFULLY</h1>
            TO GO BACK MENU CLICK <a href="HOME1.jsp"><span style="color:blue" >HERE</span></a>
           <%
            }
           else
            {
            
            out.println("MEMBER IS NOT DELETED");
           }
           
           }
           else
           {
           out.println("FIRST RETURN THE BOOKS AFTER THAT MEMBERSHIP WILL BE DELETED.....");
           
           }
           
            }
           else
           {
           out.println("plz enter the correct id.......");
           
           }
  
rs1.close();
   st.close();
   stt.close(); 
   con.close(); 
   }       
 
      catch(Exception ex){out.println(ex);}

    %>
  </body>
</html>
 