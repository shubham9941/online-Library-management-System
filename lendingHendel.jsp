<%@ page language="java" import="java.sql.*" pageEncoding="ISO-8859-1"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
  <body>
  <%! int c = 0; %>
  <%! float j = 0; %>
  <%! int k = 0; %>
  <%! float t = 0; %>
  <%! int q = 0; %>
    <%! int A = 0; %>
    <%! int T = 0; %>
    <%! int n1 = 0; %>
    <%! int u = 0; %>
   <%
 try
           {
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lib","root",null);
            PreparedStatement st = con.prepareStatement("insert into issue values (?,?,?,?)");
            PreparedStatement pst = con.prepareStatement("insert into issue values (?,?,?,?)");
            PreparedStatement pst1 = con.prepareStatement("insert into issue values (?,?,?,?)");
            
            String st1 = request.getParameter("idno");
            String st2 = request.getParameter("bname");
            String st3 = request.getParameter("bauth");
            String st4 = request.getParameter("dissue");
            String st5 = request.getParameter("dexp");
            String st6 = request.getParameter("nbks");
            ResultSet rs = st.executeQuery("select * from books");
            ResultSet rs1 = pst.executeQuery("select * from mem");
            ResultSet rs2 = pst1.executeQuery("select * from books where B_NAME='"+st2+"' and AUTHOR='"+st3+"'");
            
            n1=Integer.parseInt(request.getParameter("nbks"));
            
           j=Float.parseFloat( request.getParameter("idno"));
            while(rs1.next())
            {
            t=Float.parseFloat(rs1.getString("ID_NO"));
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
           while(rs2.next())
           {
           if((rs2.getString(1))!=null)
           {
           A=Integer.parseInt(rs2.getString("NO_OF_BOOKS"));
           q++;
            T=A-n1;
          
           }
           }
           if(q==0||T<=0)
           {
           out.println("sorry book is not exist");
           }
           else
           {
           u=st.executeUpdate("update books set NO_OF_BOOKS='"+T+"'  where B_NAME ='"+st2+"' and AUTHOR ='"+st3+"' ");
        j =st.executeUpdate("insert into issue values('"+st1+"','"+st2+"','"+st4+"','"+st5+"','"+st3+"')");
            if(j >0)
            {
             out.println("The data is added successfully");
             
            
             //int k =st.executeUpdate("delete from books where B_NAME ='"+st2+"' and AUTHOR ='"+st3+"' ");
             }
            else
            {
             out.println("The data is not added");
           }
             
           }
           }
           else
           {
           
           out.println("plz entere the correct id......");
           
           
           }
           
 
            
            
            
            
            
         // if(str.equalsIgnoreCase(st2)          
            }
           catch(Exception ex){out.println(ex);}
          
   
    %>
  </body>
</html>
