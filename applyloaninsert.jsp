<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"  errorPage="Error.jsp"%>
<%@page import=" java.security.MessageDigest"%>
<%@page import=" java.security.*"%>
<%@page import="javax.crypto.*"%>

<%

		
		Statement st = null;
		ResultSet rs1=null;
		int id=0;
		
	try{
		
			Connection con=databasecon.getconnection();
			st=con.createStatement();
			String sql1="select max(id) from loanform";
			rs1=st.executeQuery(sql1);
			while(rs1.next()){
				if(rs1.getInt(1)==0)
					id=1;
				else
					id=rs1.getInt(1)+1;
				session.setAttribute("id",id);

		String name=null,address=null,contact=null,pan=null,marital=null,dateofbirth=null,age=null,gender=null,nationality=null, religion=null, loanpurpose=null,
		 emptype=null, income=null, service=null, loanamount=null,
		project=null, propertyadd=null, cost=null, construct=null;
		String status="processing";
		java.util.Date now = new java.util.Date();
	String date=now.toString();
	 String DATE_FORMAT = "dd-MM-yyyy";
	 SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
     String strDateNew = sdf.format(now) ;
 
		
		try {		
				
					name=request.getParameter("name");
				
			        address=request.getParameter("address");
				
					contact=request.getParameter("contact");
					
					pan=request.getParameter("pan");
					marital=request.getParameter("marital");
					dateofbirth=request.getParameter("dateofbirth");
					age=request.getParameter("age");
					gender=request.getParameter("gender");
					nationality=request.getParameter("nationality");
					religion=request.getParameter("religion");
					loanpurpose=request.getParameter("loanpurpose");
					emptype=request.getParameter("emptype");
					income=request.getParameter("income");
					service=request.getParameter("service");
					loanamount=request.getParameter("loanamount");
					project=request.getParameter("project");
					propertyadd=request.getParameter("propertyadd");
					cost=request.getParameter("cost");
					construct=request.getParameter("construct");
				
					Connection con1=databasecon.getconnection(); 

			PreparedStatement ps=con1.prepareStatement("INSERT INTO loanform VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
				ps.setInt(1,id);
               	ps.setString(2,name);
				ps.setString(3,address);	
       			ps.setString(4,contact);
				ps.setString(5,pan);
				ps.setString(6,marital);
				ps.setString(7,dateofbirth);
				ps.setString(8,age);
				ps.setString(9,gender);
				ps.setString(10,nationality);
				ps.setString(11,religion);
				ps.setString(12,loanpurpose);
				ps.setString(13,emptype);
				ps.setString(14,income);
				ps.setString(15,service);
				ps.setString(16,loanamount);
				ps.setString(17,project);
				ps.setString(18,propertyadd);
				ps.setString(19,cost);
				ps.setString(20,construct);
				ps.setString(21,status);
				
			    ps.setString(22,strDateNew);
			    	
			int x=ps.executeUpdate();
		
			if(x!=0)
			{
				response.sendRedirect("applyloan.jsp?Messagesuccess");
			}
			else
			{
				response.sendRedirect("applyloan.jsp?message=fail");
			}
				
		} 
		catch (Exception e) 
		{
			out.println(e.getMessage());
		}
			}	
	}
	catch (Exception eq) 
		{
			out.println(eq.getMessage());
		}
		
	
 %>