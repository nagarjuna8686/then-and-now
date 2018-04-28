<%@ page language="java" import="java.sql.*,databaseconnection.*;" errorPage="" %>

<% String a=(String)session.getAttribute("username");
System.out.println(a);

String i=request.getParameter("id");
System.out.println(i);
String b=request.getParameter("category");
System.out.println(b);

String k=request.getParameter("iname");
System.out.println(k);
String e=request.getParameter("color");
System.out.println(e);

String f=request.getParameter("cost");
System.out.println(f);



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

var e = document.form.comment.value;

if(e=="")
{
alert("please enter correct comment");
document.form.comment.focus();
return false;
}



if(document.form.rate.selectedIndex==0)
{
alert("Please select rate");
document.form.rate.focus();
return false;
}

if(document.form.trust.selectedIndex==0)
{
alert("Please select Trusted or Untrusted");
document.form.rate.focus();
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
	  <a href="userloginshop.jsp" class="tp_menu2">User Login</a> <img src="images/tp_divider.gif" width="2" height="39" alt="" class="tp_divider" />
	   <a href="userregshop.jsp" class="tp_menu2">User Registration</a> <img src="images/tp_divider.gif" width="2" height="39" alt="" class="tp_divider" /> 
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
            <p class="tp_heading"><font size="5" >Give Your Opinion</font></p>
          </div>
          <div class="cnt_block1">
            <div style="float:left; display:inline;  height:overflow;">
            <fieldset style="border: 1px solid #CB974B ;
border-radius: 10px ;">
    <p align="center">Welcome <%=a%></p>
	   <table width="590" align="left">
     <form action="buyercomments.jsp" method="get" name="form" onsubmit="return validation();">
            <tr> 
              <td width="148" height="37"><font size="3"><strong>User Name</strong></font></td>
              <td width="238"><input type="text" value="<%=a%>" name="username" id="s" size="25" style="border: 2px solid #CB974B" /></td>
            </tr>
            <tr> 
              <td height="35"><font size="3"><strong>Item Id</strong></font></td>
              <td><input type="text" name="id" value="<%=i%>" id="s" size="25" style="border: 2px solid #CB974B"/></td>
            </tr>
			  <tr> 
              <td height="35"><font size="3"><strong>Category</strong></font></td>
              <td><input type="text" name="category" value="<%=b%>" id="s" size="25" style="border: 2px solid #CB974B"/></td>
            </tr>
			  <tr> 
              <td height="35"><font size="3"><strong>Item name</strong></font></td>
              <td><input type="text" name="iname" value="<%=k%>" id="s" size="25" style="border: 2px solid #CB974B"/></td>
            </tr>
			 <tr> 
              <td height="35"><font size="3"><strong>Color</strong></font></td>
              <td><input type="text" name="color" value="<%=e%>" id="s" size="25" style="border: 2px solid #CB974B"/></td>
            </tr>
			 <tr> 
              <td height="35"><font size="3"><strong>Comment</strong></font></td>
              <td><textarea name="comment" rows="5" cols="26"  style="border: 2px solid #CB974B"></textarea></td>
            </tr>
			 <tr> 
              <td height="35"><font size="3"><strong>Ratings</strong></font></td>
              <td><select name="rate" style="border: 2px solid #CB974B">
                    <option value="Giverating">-----------Select the rating-----------</option>
                    <option value="1">1</option>
                    <option value="1.5">1.5</option>
                    <option value="2">2</option>
                    <option value="2.5">2.5</option>
                    <option value="3">3</option>
					 <option value="3.5">3.5</option>
					<option value="4">4</option>
                    <option value="4.5">4.5</option>
                    <option value="5">5</option>
                  
                  </select></td>
            </tr>
			 <tr> 
              <td height="35"><font size="3"><strong>Trust/Untrust</strong></font></td>
              <td><select name="trust" style="border: 2px solid #CB974B">
			  <option value="givenfeedback">---------Select Feedback------------</option>
			  <option value="Good">Good</option>
			  <option value="Bad">Bad</option></select></td>
            </tr>
            <tr> 
              <td height="39"></td>
              <td><input type="submit" name="submit" class="button2" value="Login" style="border: 2px solid #CB974B"> 
                <input type="reset" name="reset" class="button2" value="Clear" style="border: 2px solid #CB974B"> 
              </td>
            </tr>
			

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
