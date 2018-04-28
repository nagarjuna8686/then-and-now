<%@ page import="java.sql.*"%>

<%@ page import="java.io.*"%>

<% Blob image = null;

Connection con = null;

byte[ ] imgData = null ;

//String w=(String)session.getAttribute("w");
Statement stmt = null;

ResultSet rs = null;

String aa=request.getParameter("id");
//String a=request.getQueryString();
//System.out.println("****************");
System.out.println("image view page iddd issssssssssssssss"+aa);

try {

Class.forName("com.mysql.jdbc.Driver");

con = DriverManager.getConnection("jdbc:mysql://localhost:3306/crime","root","admin");

stmt = con.createStatement();

rs = stmt.executeQuery("select image from productupload where iid='"+aa+"'");

if(rs.next()) {

image = rs.getBlob("image");

imgData = image.getBytes(1,(int)image.length());

} /*else {

out.println("Display Blob Example");

out.println("image not found for given image");

return;

}
*/
// display the image

response.setContentType("images/jpeg");

OutputStream o = response.getOutputStream();

o.write(imgData);

o.flush();

o.close();

} catch (Exception e) {

out.println("Unable To Display image");

out.println("Image Display Error=" + e.getMessage());

return;

} finally {

try {



stmt.close();

con.close();

} catch (SQLException e) {

e.printStackTrace();

}

}

%> 