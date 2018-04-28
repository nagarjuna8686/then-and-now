<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@page import="java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*"  errorPage="Error.jsp"%>
<%@page import=" java.security.MessageDigest"%>


<%

Connection con = null;
Statement st = null;
ResultSet rs = null;



String a = request.getParameter("username");
String t = request.getParameter("id");
String b = request.getParameter("category");
String c = request.getParameter("iname");
String d = request.getParameter("color");
String e = request.getParameter("comment");
String f = request.getParameter("rate");
String g = request.getParameter("trust");




try{
con=databasecon.getconnection();
st=con.createStatement();
st.executeUpdate("insert into comments(username,id,category,iname,color,comment,rate,trust) values('"+a+"','"+t+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"')");


response.sendRedirect("search.jsp?Message=success");







}


catch(Exception ex)
{
	out.println(ex);
}
%>
