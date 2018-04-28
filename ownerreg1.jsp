<%@ page language="java" import="java.sql.*,databaseconnection.*;" errorPage="" %>


<%

Connection con = null;
Statement st = null;
ResultSet rs = null;

String u = request.getParameter("oid");
String a = request.getParameter("ownername");
String b = request.getParameter("pwd");
String c = request.getParameter("emailid");
String d = request.getParameter("mbl_no");
String e = request.getParameter("addr");




try{
con=databasecon.getconnection();
st=con.createStatement();
st.executeUpdate("insert into owner(oid,ownername,pwd,emailid,mbl_no,addr) values('"+u+"','"+a+"','"+b+"','"+c+"','"+d+"','"+e+"')");
response.sendRedirect("ownerlogin.jsp?Message=success");



}

catch(Exception ex)
{
	out.println(ex);
}
%>
