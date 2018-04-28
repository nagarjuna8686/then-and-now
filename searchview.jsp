
<%@ page language="java" import="java.sql.*,databaseconnection.*;" errorPage="" %>
<% String a=(String)session.getAttribute("username");
System.out.println(a);
//String b= request.getParameter("category");
//session.setAttribute("b",b);




%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Then and Now: On The Maturity of the Cybercrime Markets</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" type="text/css" href="css/style.css"/>
<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>

</head>
<body>
<div id="mainblock">
  <!--inner block starts here -->
  <div id="innerblock">
  <div style="width:1000px; align:center; border:1px solid #C7244B;"><img src="images/title.png" width="1000" height="100"></div>
      <div class="tp_menu_tile" style="width:1000px;"> <a href="index.html" class="tp_menu1">Home</a> 
	  <img src="images/tp_divider.gif" width="2" height="39" alt="" class="tp_divider" /> 
	  <a href="userloginshop.jsp" class="tp_menu2">User Login</a> <img src="images/tp_divider.gif" width="2" height="39" alt="" class="tp_divider" />
	  	  <a href="search.jsp" class="tp_menu2">Back</a> <img src="images/tp_divider.gif" width="2" height="39" alt="" class="tp_divider" />

	   <a href="index.html" class="tp_menu2">Signout</a> </div>
      <div class="tp_tile2"> <img src="images/tp_btn1.gif" width="15" height="15" alt="" class="tp_btn1" />
        <p class="tp_heading"><font size="5">Online Shopping</font></p>
      </div>
      <div class="tp_block"><img src="images/on1.jpg" width="150" height="135" alt="" class="tp_image01" /></div>
      <div class="tp_block1"><img src="images/on2.jpg" width="150" height="135" alt="" class="tp_image01" /></div>
      <div class="tp_block1"><img src="images/on3.jpg" width="150" height="135" alt="" class="tp_image01" /></div>
      <div class="tp_block1"><img src="images/on4.jpg" width="150" height="135" alt="" class="tp_image01" /></div>
	   <div class="tp_block1"><img src="images/on5.jpg" width="150" height="135" alt="" class="tp_image01" /></div>
      <div class="tp_block1"><img src="images/on6.jpg" width="150" height="135" alt="" class="tp_image01" /></div>
   
    <div id="contentblock">
      <div id="leftpanel">
        <div class="lp_block"><br>
		<form action="#" method="get">
                <input type="text" value="Enter keyword here..." name="q" size="10" id="search" style="width:210px;" title="searchfield" onfocus="clearText(this)" onblur="clearText(this)" />
                <input type="submit" value="Submit" name="Submit" style="width:50px;" />
            </form><br>
          <div class="lp_tile">
		   
			 <img src="images/lp_btn1.gif" width="15" height="15" alt="" class="lp_btn1" />
            <p class="lp_heading">Categories</p>
		
          </div>
          <div class="rp_listblock"> <img src="images/lp_btn2.gif" width="6" height="5" alt="" class="rp_btn3" /> <a href="#" class="rp_listtxt">Social Network</a> </div>
          <div class="rp_listblock"> <img src="images/lp_btn2.gif" width="6" height="5" alt="" class="rp_btn3" /> <a href="#" class="rp_listtxt">Online Shopping</a> </div>
          <div class="rp_listblock"> <img src="images/lp_btn2.gif" width="6" height="5" alt="" class="rp_btn3" /> <a href="#" class="rp_listtxt">Watsapp</a> </div>
          <div class="rp_listblock"> <img src="images/lp_btn2.gif" width="6" height="5" alt="" class="rp_btn3" /> <a href="#" class="rp_listtxt">Banking Loan &amp; Credit Card</a> </div>
          <div class="rp_listblock"> <img src="images/lp_btn2.gif" width="6" height="5" alt="" class="rp_btn3" /> <a href="#" class="rp_listtxt">Facebook Scams</a> </div>
          <div class="rp_listblock"> <img src="images/lp_btn2.gif" width="6" height="5" alt="" class="rp_btn3" /> <a href="#" class="rp_listtxt">Lottery Fraud</a> </div>
          <div class="rp_listblock"> <img src="images/lp_btn2.gif" width="6" height="5" alt="" class="rp_btn3" /> <a href="#" class="rp_listtxt">Email Account Hacks</a> </div>
          <div class="rp_listblock" style="padding-bottom:10px;"> <img src="images/lp_btn2.gif" width="6" height="5" alt="" class="rp_btn3" /> <a href="#" class="rp_listtxt">Others</a> </div>
        </div>
      
        <img src="images/lp_image.gif" width="279" height="129" alt="" class="lp_image" />
		
			  </div>
      <div id="contentpanel">
        <div style="float:left; ">
          <div class="cnt_tile2"> <img src="images/tp_btn1.gif" width="15" height="15" alt="" class="tp_btn1" />
            <p class="tp_heading"><font size="5" >Product Details</font></p>
          </div>
          <div class="cnt_block1">
            <div style="float:left; display:inline;  height:overflow;">
			<p align="center">Welcome <%=a%></p>
 <table width="620" height="50" border="1px" align="center">
         <form action="#" method="post" name="form";>
 <tr bgcolor="#DEDBDC"> 
            <th width="147" height="41"><font color="#000000"><strong>Item ID</strong></font></th>
            <th width="144"><font color="#000000"><strong>Category</strong></font></th>
            <th width="144"><font color="#000000"><strong>Item Name</strong></font></th>
            <th width="157"><font color="#000000"><strong>Color</strong></font></th>
			  <th width="144"><font color="#000000"><strong>Cost</strong></font></th>
			    <th width="144"><font color="#000000"><strong>Image</strong></font></th>
			    <th width="112" ><font color="#000000"size="-1"><strong>AddCmd</strong></font></th>
							    <th width="112" ><font color="#000000"size="-1"><strong>ViewCmd</strong></font></th>

		  <th width="112" ><font color="#000000"size="-1"><strong>graph</strong></font></th>
          </tr>
         <%
 String category = request.getParameter("category");
System.out.println(category);
String iname = request.getParameter("iname");
System.out.println(iname);
 try

{

Connection con=databasecon.getconnection();

Statement st=con.createStatement();

//String sql="select item,itemname,itemcolor,itemcost,discription from upload1 where item='"+item+"' AND itemname='"+itemname+"'";
//String sql="select item,itemname,itemcolor,itemcost,discription from upload1";
String sql="select iid,category,iname,color,cost,image from productupload where category='"+category+"' " ;

ResultSet rs=st.executeQuery(sql);

while(rs.next())

    {
	String i=rs.getString(1);
	String b=rs.getString(2);
	String c=rs.getString(3);
	String d=rs.getString(4);
	String e=rs.getString(5);
	String f=rs.getString(6);
	
session.setAttribute("iid",i);
session.setAttribute("category",b);
session.setAttribute("iname",c);
session.setAttribute("color",d);
session.setAttribute("cost",e);
session.setAttribute("image",f);


%>
          <tr> 
            <td align="center"><font color="#006633"><strong><%=rs.getString("iid")%></strong></font></td>
			
            <td align="center"><font color="#006633"><strong><%=rs.getString("category")%></strong></font></td>
            <td align="center"><font color="#006633"><strong><%=rs.getString("iname")%></strong></font></td>
			<td align="center"><font color="#006633"><strong><%=rs.getString("color")%></strong></font></td>
			<td align="center"><font color="#006633"><strong><%=rs.getString("cost")%></strong></font></td>
           <td>
<a href="aboutfile.jsp"><img src="imageview.jsp?id=<%=rs.getString("iid")%>"width="50" height="70"></a></td> 
         <td width="129" > <p><a href="comments.jsp?id=<%=i%>&&category=<%=b%>&&iname=<%=c%>&&color=<%=d%>&&cost=<%=e%>"><font color="#006653">AddCmd</font></a></p></td>
         
	         <td width="129" > <p><a href="viewcommentuser.jsp?id=<%=i%>"><font color="#006653">ViewCmd</font></a></p></td>
	
		
<td><p><a href="graphshop.jsp?id=<%=i%>"><font  color="#000000"><u><strong><strong>Graph</strong></strong></u></font></a></p></td>
	
<!-- <td><p><a href="graphtrust.jsp?id=<%=i%>"><font  color="#000000"><u><strong><strong>Opinion</strong></strong></u></font></a></p></td> -->

<%
}     
st.close();

con.close();

}

catch(Exception e)

{

out.println(e);

}

%>   
        </form>
      </table>
				 

	  
	  </div>
            </div>
           </div>
        </div>
     
       
    </div>
    <div id="footerpanel">
      <div id="footerblock">
	  <marquee direction="down" height="50px" behavior="alternate" >
  <marquee behavior="alternate">
  <font color="#FFFFFF" size="5"> <strong>Then and Now: On The Maturity of the Cybercrime Markets</strong></font>
  </marquee>
</marquee>

	
      </div>
    </div>
    <!--inner block ends up -->
	</div>
  </div>
</div>
<!--main block ends up -->
</body>
</html>
