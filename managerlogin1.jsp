<%@ page import="java.sql.*,databaseconnection.*"%>
<html>
    <head>
	<title>Anomaly Detection</title>
    </head>
    <body>
	<form>
	<% 
     String username=request.getParameter("username");
	 String password=request.getParameter("password");		
	Connection con=null;
	Statement st=null;
	ResultSet rs=null;
	String sql="select * from manager where username='"+username+"' AND password='"+password+"'";
	try
	{
	   con=databasecon.getconnection();
	    st=con.createStatement();
	    rs=st.executeQuery(sql);
	    if(rs.next())
	     {
		session.setAttribute("username",username);
	
		 %>
			 response.sendRedirect("managerpage.jsp");	
		<!--<jsp:forward page="managerpage.jsp"/> -->
	    	<%
	             		    
	    }
	  out.println("Oop's! you are not Authenticated Person");
	}
	catch(SQLException e1)
	{
		
		System.out.println(e1);
	
	 }

	finally
	{
	     st.close();
	      con.close();
	}
            %>
             </form>
       </body> 	
</html>