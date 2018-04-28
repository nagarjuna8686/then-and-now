<%@ page language="java" import="java.sql.*,databaseconnection.*" errorPage="" %>

<%
try
{
  Connection con;
   con =  databasecon.getconnection();  
   Statement st = con.createStatement();
   String name = null;
   String email = request.getParameter("email");
   String pass = request.getParameter("pass");
   
      
   String s = "select * from reg where email='"+email+"' and pass='"+pass+"'";
   
   ResultSet rs = st.executeQuery(s);
   
   if(rs.next())
   {
    session.setAttribute("id",rs.getInt("id"));
   session.setAttribute("email",rs.getString("email"));
   response.sendRedirect("userpage.jsp");
   }
   else
  
   out.print("Please check your login credentials");
   }
   
   catch(Exception x)
   {
   out.println(x);
   }
   %>