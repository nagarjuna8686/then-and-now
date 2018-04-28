<%@ page import="java.sql.*,databaseconnection.*"%>

<%


	
String a=request.getParameter("username");
String b=request.getParameter("password");
	

	try{
			
	    Connection con = databasecon.getconnection();
        PreparedStatement ps=con.prepareStatement("select uid,username,password from shopuserreg where username='"+a+"' && password='"+b+"'");
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
		response.sendRedirect("search.jsp");
		session.setAttribute("username",a);
		session.setAttribute("uid",Integer.toString(rs.getInt("uid")));
		System.out.println(a);
		//System.out.println(b);
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
