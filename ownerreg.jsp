<%@ page import="java.util.date.*,java.util.text.DateFormat.*,java.text.ParseException.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>	 
<% 
	


	ResultSet rs1=null;
	int n=1;
	try{
		
		 Connection con=databasecon.getconnection();
		Statement st=con.createStatement();
		String sql1="select max(oid) from owner";
		
		rs1=st.executeQuery(sql1);
		
		while(rs1.next())
		{
		if(rs1.getInt(1)==0)
		n=1;
		else
		n=rs1.getInt(1)+1;
		session.setAttribute("oid",n);
		System.out.println(n);
		
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
<script language="JavaScript" type="text/javascript">
function validation()
{
var a=document.form.ownername.value;
var b=document.form.pwd.value;
var c=document.form.emailid.value;
var d=document.form.mbl_no.value;
var e=document.form.addr.value;




if(a=="")
{
alert("please enter correct user name");
document.form.ownername.focus();
return false;
}
if(b=="")
{
alert("please enter correct password");
document.form.pwd.focus();
return false;
}

if(c=="")
{
alert("please enter correct email");
document.form.emailid.focus();
return false;
}
if(c.indexOf("@",0)<0)
 {
 alert("enter valid email");
 document.form.emailid.focus();
 return false;
 }
if(c.indexOf(".",0)<0)
 {
 alert("enter valid email");
 document.form.emailid.focus();
 return false;
 }

if(d=="")
{
alert("please enter correct mno");
document.form.mbl_no.focus();
return false;
}
if(isNaN(d))
 {
    alert("enter your mno");
    document.form.mbl_no.focus();
    return false;
 }
 if(d.length!=10)
{
 alert("enter 10 integers only");
 document.form.mbl_no.focus();
 return false;
}


if(e=="")
{
alert("please enter correct address");
document.form.addr.focus();
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
	  <a href="ownerlogin.jsp" class="tp_menu2">Owner Login</a> <img src="images/tp_divider.gif" width="2" height="39" alt="" class="tp_divider" />
	   <a href="ownerreg.jsp" class="tp_menu2">Owner Registration</a> <img src="images/tp_divider.gif" width="2" height="39" alt="" class="tp_divider" /> 
	   <a href="index.html" class="tp_menu2">Signout</a>  </div>
      <div class="tp_tile2"> <img src="images/tp_btn1.gif" width="15" height="15" alt="" class="tp_btn1" />
        <p class="tp_heading"><font size="5">Cybercrime Black Markets</font></p>
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
            <p class="tp_heading"><font size="5" >Owner Registration</font></p>
          </div>
          <div class="cnt_block1">
            <div style="float:left; display:inline;  height:overflow;">
            <fieldset style="border: 1px solid #CB974B ;
border-radius: 10px ;">
    
	   <table width="590" align="left">
     <form action="ownerreg1.jsp" method="post" name="form" onsubmit="return validation();">
	  <tr> 
              <td width="148" height="37"><font size="3"><strong>Owner Id</strong></font></td>
              <td width="238"><input type="text" name="oid" value="<%=n%>" id="s" size="25" style="border: 2px solid #CB974B" /></td>
            </tr>
            <tr> 
              <td width="148" height="37"><font size="3"><strong>Owner Name</strong></font></td>
              <td width="238"><input type="text" name="ownername" id="s" size="25" style="border: 2px solid #CB974B" /></td>
            </tr>
            <tr> 
              <td height="35"><font size="3"><strong>Password</strong></font></td>
              <td><input type="password" name="pwd" id="s" size="25" style="border: 2px solid #CB974B"/></td>
            </tr>
			  <tr> 
              <td width="148" height="37"><font size="3"><strong>EmailId</strong></font></td>
              <td width="238"><input type="text" name="emailid" id="s" size="25" style="border: 2px solid #CB974B" /></td>
            </tr>
			  <tr> 
              <td width="148" height="37"><font size="3"><strong>Mobile No</strong></font></td>
              <td width="238"><input type="text" name="mbl_no" id="s" size="25" style="border: 2px solid #CB974B" /></td>
            </tr>
			  <tr> 
              <td width="148" height="37"><font size="3"><strong>Address</strong></font></td>
              <td width="238"><input type="text" name="addr" id="s" size="25" style="border: 2px solid #CB974B" /></td>
            </tr>
            <tr> 
              <td height="39"></td>
              <td><input type="submit" name="submit" class="button2" value="Register" style="border: 2px solid #CB974B"> 
                <input type="reset" name="reset" class="button2" value="Clear" style="border: 2px solid #CB974B"> 
              </td>
            </tr>
			
          </form>
        
      </table>
      </fieldset>
		   
     <%
	}
	catch(Exception e1){
		out.println(e1.getMessage());
	}
%>


	  
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
