<%@ page language="java" import="java.sql.*,databaseconnection.*;" errorPage="" %>


<%

Connection con = null;
Statement st = null;
ResultSet rs = null;

String u = request.getParameter("uid");
String a = request.getParameter("username");
String b = request.getParameter("password");
String c = request.getParameter("email");
String d = request.getParameter("mno");
String e = request.getParameter("address");




try{
con=databasecon.getconnection();
st=con.createStatement();
st.executeUpdate("insert into shopuserreg(uid,username,password,email,mno,address) values('"+u+"','"+a+"','"+b+"','"+c+"','"+d+"','"+e+"')");
response.sendRedirect("userloginshop.jsp?Message=success");



}

catch(Exception ex)
{
	out.println(ex);
}
%>
