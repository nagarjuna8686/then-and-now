<%@ page import="java.sql.*,databaseconnection.*"%>

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
<script language="JavaScript">
function validation()
{
var a = document.form.username.value;
var b = document.form.password.value;


if(a=="")
{
alert("Enter the Username");
document.form.username.focus();
return false;
}

 
if(b=="")
{
alert("Enter the password");
document.form.password.focus();
return false;
}


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
	   <a href="adminlogin.jsp" class="tp_menu2">Admin Login</a> <img src="images/tp_divider.gif" width="2" height="39" alt="" class="tp_divider" /> 
	   	  <a href="adminpage.jsp" class="tp_menu2">Back</a> <img src="images/tp_divider.gif" width="2" height="39" alt="" class="tp_divider" />
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
            <p class="tp_heading"><font size="5" >View All Online Shopping Product Comments Details</font></p>
          </div>
          <div class="cnt_block1">
            <div style="float:left; width:620px; display:inline;  height:overflow;">
            <fieldset style="border: 1px solid #CB974B ;
border-radius: 10px ;">
    
	 <table width="590" height="50" border="1px" align="center">
         <form action="#" method="post" name="form";>
          <tr bgcolor="#DEDBDC"> 
            <th width="147" height="41"><font color="#000000"><strong>Product ID</strong></font></th>
            <th width="144"><font color="#000000"><strong>UserName</strong></font></th>
            <th width="144"><font color="#000000"><strong>Category</strong></font></th>
            <th width="157"><font color="#000000"><strong>Item Name</strong></font></th>
			  <th width="144"><font color="#000000"><strong>Comments</strong></font></th>
			    <th width="144"><font color="#000000"><strong>Rate</strong></font></th>
			   			    <th width="144"><font color="#000000"><strong>Opinion</strong></font></th>

          </tr>
          <%
		int id=0; 
		 
		  
try
{
  Connection con;
   con =  databasecon.getconnection();  
   Statement st = con.createStatement();
   String s = "select * from comments ";
   
   ResultSet rs = st.executeQuery(s);
   
  while(rs.next())
   {
          
   %>
          <tr> 
            <td align="center"><font color="#257268"><strong><%=rs.getInt("id")%></strong></font></td>
			
            <td align="center"><font color="#257268"><strong><%=rs.getString("username")%></strong></font></td>
            <td align="center"><font color="#257268"><strong><%=rs.getString("category")%></strong></font></td>
			<td align="center"><font color="#257268"><strong><%=rs.getString("iname")%></strong></font></td>
			<td align="center"><font color="#257268"><strong><%=rs.getString("comment")%></strong></font></td>
			<td align="center"><font color="#800040"><strong><%=rs.getString("rate")%></strong></font></td>
						<td align="center"><font color="#800040"><strong><%=rs.getString("trust")%></strong></font></td>

          </tr>
          <%}

   }
   
   catch(Exception x)
   {
   out.println(x);
   }
   %>
        </form>
      </table>
				 
	</fieldset>	  

	  
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
