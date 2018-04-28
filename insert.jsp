<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>

 
 
  <%
  
  	Connection con=null;
		 
		ArrayList list = new ArrayList();
		ServletContext context = getServletContext();

		String dirName =context.getRealPath("\\images"); 
		System.out.println("Dirname :"+dirName); 
		String paramname=null;
		String file=null,image=null,gly="images";
		String iid=null,category=null,iname=null,color=null;
		String cost=null,count=null;
		String bin = "";
		long size_kb=0;
		FileInputStream fs=null;
 
		File file1 = null;
		
		
		
		try 
		{
		  
			
			MultipartRequest multi = new MultipartRequest(request, dirName,	1024 * 1024);

			Enumeration params = multi.getParameterNames();
			while (params.hasMoreElements()) 
			{
		 	 
				paramname = (String) params.nextElement();
				
				if(paramname.equalsIgnoreCase("iid"))
				{
					iid=multi.getParameter(paramname);
					 
				}
				
				if(paramname.equalsIgnoreCase("category"))
				{
					category=multi.getParameter(paramname);
					 
				}
				
				if(paramname.equalsIgnoreCase("iname"))
				{
					iname=multi.getParameter(paramname);
					 
				}
				
				if(paramname.equalsIgnoreCase("color"))
				{
					color=multi.getParameter(paramname);
					 
				}
				if(paramname.equalsIgnoreCase("cost"))
				{
					cost=multi.getParameter(paramname);
					 
				}
				
				if(paramname.equalsIgnoreCase("image"))
				{
					image=multi.getParameter(paramname);
					
				}
				  
				if(paramname.equalsIgnoreCase("count"))
				{
					count=multi.getParameter(paramname);
					
				}
				
				
				
				}
			 		 
					
			int f = 0;
		Enumeration files = multi.getFileNames();	
		while (files.hasMoreElements()) 
	{
		paramname = (String) files.nextElement();
		if(paramname.equals("d1"))
		{
			paramname = null;
		}
		
		if(paramname != null)
		{
			f = 1;
			image = multi.getFilesystemName(paramname);
			String fPath1 = context.getRealPath("");
			String fPath=fPath1+"/"+gly+"/"+image;
			System.out.println("Filepath ; " +fPath);
			file1 = new File(fPath);
			fs = new FileInputStream(file1);
			list.add(fs);
			
			
				
		String ss=fPath;
		FileInputStream fis = new FileInputStream(ss);
		StringBuffer sb1=new StringBuffer();
		 int i = 0;
         while ((i = fis.read()) != -1) {
                 if (i != -1) {
                       //System.out.println(i);
						 String hex = Integer.toHexString(i);
						// session.put("hex",hex);
						 sb1.append(hex);
						// sb1.append(",");
						 
 
                 }
			
    }
				
		}		
	}
	
	
	 
	        FileInputStream fs1 = null;
           
	
  		
con = databasecon.getconnection();  
 
 PreparedStatement ps=con.prepareStatement("insert into productupload(iid,category,iname,color,cost,image,count) values(?,?,?,?,?,?,?)");
				
				ps.setString(1,iid);
                ps.setString(2,category);
				ps.setString(3,iname);
				ps.setString(4,color);
				ps.setString(5,cost);
				ps.setBinaryStream(6, (InputStream)fs, (int)(image.length()));
				ps.setString(7,count);
				
				
	   if(f == 0)
			ps.setObject(6,null);
		else if(f ==6)
		{
			fs1 = (FileInputStream)list.get(0);
			ps.setBinaryStream(6,fs1,fs1.available());
		}	
			int x=ps.executeUpdate();
			 
		if(x!=0)
			{
				System.out.println("Success");
				response.sendRedirect("upload.jsp");
			}
			else
			{
				System.out.println("Failed");
				response.sendRedirect("upload.jsp");
			}
				
 



	}
	catch(Exception e2){
		e2.printStackTrace();
	}
  
  
  
	
 %>
 
 
 