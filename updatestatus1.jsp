<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
<%@page import=" java.security.MessageDigest"%>
<%@page import=" java.security.*"%>
<%@page import="javax.crypto.*"%>
<html>
<head>
</head>
<body>
<%

	  String id4=request.getParameter("id4");
		String status = "CreditCardDenied";
	
		
	
		
		try {
	

            
			Connection con=databasecon.getconnection(); 
			PreparedStatement ps=con.prepareStatement("update loanform set status=? where id='"+id4+"'");
			    
       			
       			ps.setString(1,status);

										
				
int x=ps.executeUpdate();
		
			if(x!=0)
			{
				response.sendRedirect("denied.jsp?message=success");
			}
			else
			{
				response.sendRedirect("denied.jsp?message=fail");
			}
				
		} 
		catch (Exception e) 
		{
			out.println(e.getMessage());
		}
	
 %>
</body>
</html>
