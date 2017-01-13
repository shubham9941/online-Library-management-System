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
            String st1 = request.getParameter("lin");
            String st2 = request.getParameter("lbn");
            String st3 = request.getParameter("ldoi");
            String st4 = request.getParameter("ldoe");
            ResultSet rs = st.executeQuery("select * from books");
            while(rs.next())
            {
            
            String str = rs.getString("B_NAME");
            //if(new String(str).equals(st2))
          
          //out.println(rs.getString(1));
          //out.println(st2);
          //String str = rs.getString("B_NAME");
          out.println( str+st2);
         //if((rs.getString(1))==(request.getParameter("lbn")))
          if(str.equalsIgnoreCase(st2))
            {
              out.println("Book Matched");
              c=1;
              
            break;
            }
            else
            {
            
            continue;
            }
            }
            
            
            
            if(c==0)
            {
            out.println("sorry book is not available");
            }
            else
            {
	 j =st.executeUpdate("insert into issue values('"+st1+"','"+st2+"','"+st3+"','"+st4+"')");
	}
            
            if(j >0)
            {
             out.println("The data is added successfully");
             int k =st.executeUpdate("delete from books where B_NAME ='"+st2+"' ");
             }
            else
             out.println("The data is not added");
           }
           catch(Exception ex){out.println(ex);}
          
   
    %>
  </body>
</html>
