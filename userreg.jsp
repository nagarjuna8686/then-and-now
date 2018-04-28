<%@ page import="java.util.date.*,java.util.text.DateFormat.*,java.text.ParseException.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>	 
<% 
	
	java.util.Date now = new java.util.Date();
	 String DATE_FORMAT1 = "dd/MM/yyyy hh:mm:ss a";
	 SimpleDateFormat sdf1 = new SimpleDateFormat(DATE_FORMAT1);
     String strDateNew1 = sdf1.format(now);

	ResultSet rs1=null;
	int n=0;
	try{
		
		 Connection con=databasecon.getconnection();
		Statement st=con.createStatement();
		String sql1="select max(id) from reg";
		
		rs1=st.executeQuery(sql1);
		
		if(rs1.next())
		{
		if(rs1.getInt(1)==0)
		n=1;
		else
		n=rs1.getInt(1)+1;
		session.setAttribute("id",n);
		}
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
<script language="JavaScript">
function validation()
{
var a = document.form.id.value;
var b = document.form.name.value;
var b1 = document.form.pass.value;
var c = document.form.email.value;
var d= document.form.phone.value;
var e= document.form.address.value;


if(a=="")
{
alert("Enter Your Id");
document.form.id.focus();
return false;
}
if(b=="")
{
alert("Enter the Name");
document.form.name.focus();
return false;
}
if(b1=="")
{
alert("Enter the Password");
document.form.pass.focus();
return false;
}
if(c=="")
{
alert("Enter the emailid");
document.form.email.focus();
return false;
}
if (c.indexOf("@", 0) < 0)
{
alert("Please enter a valid e-mail address.");
document.form.email.focus();
return false;
}
if (c.indexOf(".", 0) < 0)
{
alert("Please enter a valid e-mail address.");
document.form.email.focus();
return false;
}	
if(d=="")
{
alert("Enter the phoneno");
document.form.phone.focus();
return false;
}
if(isNaN(d))
    {
        alert("Please enter the Correct Phone number");
			document.form.phone.focus();
        return false;
    }

if(e=="")
{
alert("Enter the Address");
document.form.address.focus();
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
	  <a href="userlogin.jsp" class="tp_menu2">User Login</a> <img src="images/tp_divider.gif" width="2" height="39" alt="" class="tp_divider" />
	   <a href="userreg.jsp" class="tp_menu2">Registration</a> <img src="images/tp_divider.gif" width="2" height="39" alt="" class="tp_divider" /> 
	   <a href="managerlogin.jsp" class="tp_menu2">ManagerLogin</a> <img src="images/tp_divider.gif" width="2" height="39" alt="" class="tp_divider" /> 
	   <a href="index.html" class="tp_menu2">Signout</a> </div>
      <div class="tp_tile2"> <img src="images/tp_btn1.gif" width="15" height="15" alt="" class="tp_btn1" />
        <p class="tp_heading"><font size="5">Cybercrime Black Markets</font></p>
      </div>
      <div class="tp_block"><img src="images/cards.JPG" width="150" height="135" alt="" class="tp_image01" /></div>
      <div class="tp_block1"><img src="images/cardscollection.jpg" width="150" height="135" alt="" class="tp_image01" /></div>
      <div class="tp_block1"><img src="images/credit_theft.jpg" width="150" height="135" alt="" class="tp_image01" /></div>
      <div class="tp_block1"><img src="images/creditcard.jpg" width="150" height="135" alt="" class="tp_image01" /></div>
	   <div class="tp_block1"><img src="images/Cybercrime.png" width="150" height="135" alt="" class="tp_image01" /></div>
      <div class="tp_block1"><img src="images/images.jpg" width="150" height="135" alt="" class="tp_image01" /></div>
   
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
            <p class="tp_heading"><font size="5" >User Registration</font></p>
          </div>
          <div class="cnt_block1">
            <div style="float:left; display:inline;  height:overflow;">
              <fieldset style="border: 1px solid #CB974B ;
border-radius: 10px ;
-moz-border-radius: 10px ;
-webkit-border-radius: 10px ; width:500px;  margin: 0px  50px;">
      <p align="left"> 
        <%
                                                       String message=request.getParameter("Message");
                                                       if(message!=null && message.equalsIgnoreCase("success"))
                                                       {
                                                               out.println("<font color='red' size='3'><blink>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Registered Successfully !</blink></font>");
                                                       }
                                               %>
      </p>
    
	   <table width="450" align="left">
      <form action="reginsert.jsp" method="post" name="form" onsubmit="return validation();">
          <tr> 
            <td width="101" height="36" class="paragraping"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Id</strong></td>
            <td width="172" class="id"><input type="text"  name="id" value="<%=n%>" style="border: 1px solid #CB974B"></td>
          </tr>
          <tr> 
            <td width="101" height="37" class="paragraping"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;UserName</strong></td>
            <td width="172" class="name"><input type="text"  name="name" style="border: 1px solid #CB974B"></td>
          </tr>
          <tr> 
          <tr> 
            <td width="101" height="36" class="paragraping"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Password</strong></td>
            <td width="172" class="name"><input type="password"  name="pass" style="border: 1px solid #CB974B"></td>
          </tr>
          <tr> 
            <td width="101" height="35" class="paragraping"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;EmailId</strong></td>
            <td width="172" class="email"><input type="text"  name="email" style="border: 1px solid #CB974B"></td>
          </tr>
          <tr> 
            <td width="101" height="36" class="paragraping"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;PhoneNo</strong></td>
            <td width="172" class="phone"><input type="text"  name="phone" style="border: 1px solid #CB974B"></td>
          </tr>
           <tr> 
            <td width="101" height="36" class="paragraping"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Address</strong></td>
            <td width="172" class="phone"><input type="text"  name="address" style="border: 1px solid #CB974B"></td>
          </tr>
          <tr> 
            <td height="30"></td>
            <td><%=strDateNew1%>  </td>
          </tr>
          <tr> 
            <td></td>
            <td><input type="submit" name="B1" class="button2" value="Register" style="border: 1px solid #CB974B"> 
              <input type="reset" name="reset" class="button2" value="Clear" style="border: 1px solid #CB974B"></td>
          </tr>
        </form>
        <%
	}
	catch(Exception e1){
		out.println(e1.getMessage());
	}
%>
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
