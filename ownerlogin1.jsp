<%@ page import="java.sql.*,databaseconnection.*"%>

<%


	
String a=request.getParameter("ownername");
String b=request.getParameter("pwd");

System.out.println("owner name is"+a);
	
System.out.println("password is "+b);
	try{
			
	    Connection con = databasecon.getconnection();
        PreparedStatement ps=con.prepareStatement("select oid,ownername,pwd from owner where ownername='"+a+"' && pwd='"+b+"'");
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
		response.sendRedirect("upload.jsp");
		session.setAttribute("ownername",a);
		session.setAttribute("oid",Integer.toString(rs.getInt("oid")));
		System.out.println(a);
		}
		else
		{
		out.println("enter correct  name and password");
		}
		

	}
	catch(Exception e2){
		out.println(e2.getMessage());
	}
%>
