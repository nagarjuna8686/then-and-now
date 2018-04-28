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
var a = document.form.name.value;
var b = document.form.address.value;
var c= document.form.contact.value;
var d = document.form.pan.value;
var e = document.form.dateofbirth.value;
var f= document.form.age.value;
var g= document.form.gender.value;
var h= document.form.nationality.value;
var i= document.form.religion.value;
var j= document.form.loanpurpose.value;
var k= document.form.income.value;
var l= document.form.service.value;
var m= document.form.loanamount.value;
var n= document.form.project.value;
var o= document.form.propertyadd.value;
var p= document.form.cost.value;
var q= document.form.construct.value;



if(a=="")
{
alert("Enter Your name");
document.form.name.focus();
return false;
}
if(b=="")
{
alert("Enter the Address");
document.form.address.focus();
return false;
}
if(c=="")
{
alert("Enter the contactno");
document.form.contact.focus();
return false;
}
if(isNaN(c))
    {
        alert("Please enter the Correct contact number");
			document.form.contact.focus();
        return false;
    }
if(d=="")
{
alert("Enter the PanNo");
document.form.pan.focus();
return false;
}
if(document.form.marital.selectedIndex==0)
{
alert("Select MaritalStatus");

document.form.marital.focus();

return false;
}
if(e=="")
{
alert("Enter the dateof birth");
document.form.dateofbirth.focus();
return false;
}
if(f=="")
{
alert("Enter the age");
document.form.age.focus();
return false;
}
if(isNaN(f))
    {
        alert("Please enter the Correct age");
			document.form.age.focus();
        return false;
    }
	if(document.form.gender.selectedIndex==0)
{
alert("Select gender");

document.form.gender.focus();

return false;
}
if(h=="")
{
alert("Enter the Nationality");
document.form.nationality.focus();
return false;
}
if(document.form.religion.selectedIndex==0)
{
alert("Select religion");

document.form.religion.focus();

return false;
}
if(j=="")
{
alert("Enter the Loanpurpose");
document.form.loanpurpose.focus();
return false;
}
	

if(document.form.emptype.selectedIndex==0)
{
alert("Select employmenttype");

document.form.emptype.focus();

return false;
}
if(k=="")
{
alert("Enter the Annualincome");
document.form.income.focus();
return false;
}
if(l=="")
{
alert("Enter the No of service");
document.form.service.focus();
return false;
}
if(m=="")
{
alert("Enter the loanamout");
document.form.loanamount.focus();
return false;
}
if(n=="")
{
alert("Enter the name of builder");
document.form.project.focus();
return false;
}
if(o=="")
{
alert("Enter the propertyaddress");
document.form.propertyadd.focus();
return false;
}

if(p=="")
{
alert("Enter the Cost of house");
document.form.cost.focus();
return false;
}
if(q=="")
{
alert("Enter the cost of construction");
document.form.construct.focus();
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
            <p class="tp_heading"><font size="5" >Credit Card Application Form</font></p>
          </div>
          <div class="cnt_block1">
            <div style="float:left; display:inline;  height:overflow;">
            <fieldset style="border: 1px solid #CB974B ;
border-radius: 10px ;">
      <p align="center"> 
        <%
                                                       String message=request.getParameter("Message");
                                                       if(message!=null && message.equalsIgnoreCase("success"))
                                                       {
                                                               out.println("<font color='red' size='3'><blink>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Registered Successfully !</blink></font>");
                                                       }
                                               %>
      </p>
	   <table width="590" align="left">
        <form action="applyloaninsert.jsp" method="post" name="form" onsubmit="return validation();">
         <tr>
		 		 
              <td bgcolor="#FF9900" colspan="4"><strong><font color="#000000">Personal 
                Information</font></strong></td>
		 </tr>
          <tr> 
                    <td width="133" height="37" class="paragraping"><strong>Name 
                      Of The Applicant</strong></td>
            <td width="150" class="name"><input type="text" size="15"  name="name" style="border: 1px solid #CB974B"></td>
          </tr>
          <tr> 
          <tr> 
                    <td width="133" height="36" class="paragraping"><strong>ResidentalAddress</strong></td>
            <td width="150" class="name"><input type="text" size="15" name="address" style="border: 1px solid #CB974B"></td>
          </tr>
          <tr> 
                    <td width="133" height="35" class="paragraping"><strong>ContactNo</strong></td>
            <td width="150" class="email"><input type="text" size="15"  name="contact" style="border: 1px solid #CB974B"></td>
			            <td width="141" height="35" class="paragraping"><strong>&nbsp;&nbsp;&nbsp;PAN</strong></td>
            <td width="100" class="email"><input type="text" size="15"  name="pan" style="border: 1px solid #CB974B"></td>
          </tr>
          <tr> 
                    <td width="133" height="36" class="paragraping"><strong>Marital 
                      Status</strong></td>
            <td width="150" class="fielditem"><select name="marital" style="border: 1px solid purple">
                <option value="--Select--">----------Select----------</option>
                <option value="Married">Married</option>
                <option value="Single">Single</option>
				
              </select></td>
          <td width="141" height="36" class="paragraping"><strong>&nbsp;&nbsp;&nbsp;Date Of Birth</strong></td>
            <td width="100" class="phone"><input type="text" size="15"  name="dateofbirth" style="border: 1px solid #CB974B"></td>
		  </tr>
           <tr> 
                    <td width="133" height="36" class="paragraping"><strong>Age</strong></td>
            <td width="150" class="phone"><input type="text" size="15"  name="age" style="border: 1px solid #CB974B"></td>
			   <td width="141" height="36" class="paragraping"><strong>&nbsp;&nbsp;&nbsp;Gender</strong></td>
          <td width="100" class="fielditem"><select name="gender" style="border: 1px solid purple">
                <option value="--Select--">----------Select----------</option>
                <option value="Male">Male</option>
                <option value="Female">Female</option>
				
              </select></td>
          </tr>
		       <tr> 
            <td width="133" height="40" class="paragraping"><strong>Nationality</strong></td>
            <td width="150" class="phone"><input type="text" size="15" name="nationality" style="border: 1px solid #CB974B"></td>
			   <td width="141" height="40" class="paragraping"><strong>&nbsp;&nbsp;&nbsp;Religion</strong></td>
             <td width="100" class="fielditem"><select name="religion" style="border: 1px solid purple">
                <option value="--Select--">----------Select----------</option>
                <option value="Hindu">Hindu</option>
                <option value="Muslim">Muslim</option>
				<option value="Christian">Christian</option>
              </select></td>
          </tr>
          
		  <tr>
		    <td width="133" height="38" class="paragraping"><strong>Purpose Of Credit card</strong></td>
            <td width="150" class="phone"><input type="text" size="15"  name="loanpurpose" style="border: 1px solid #CB974B"></td>
		  </tr>
		  <tr>
		 		 
              <td height="21" colspan="4" bgcolor="#FF9900"><strong><font color="#000000">Employment 
                Details</font></strong></td>
		 </tr>
		      <tr> 
            <td width="133" height="45" class="paragraping"><strong>Type Of Employment</strong></td>
           <td width="150" class="fielditem"><select name="emptype" style="border: 1px solid purple">
                <option value="--Select--">----------Select----------</option>
                <option value="Salaried">Salaried</option>
                <option value="Self Employed">Self Employed</option>
				
              </select></td>
			   <td width="141" height="45" class="paragraping"><strong>&nbsp;&nbsp;&nbsp;Annual Income</strong></td>
            <td width="100" class="phone"><input type="text" size="15"  name="income" style="border: 1px solid #CB974B"></td>
          </tr>
		       <tr> 
            <td width="133" height="44" class="paragraping"><strong>No.OfYears in Service</strong></td>
            <td width="150" class="phone"><input type="text" size="15" name="service" style="border: 1px solid #CB974B"></td>
			   <td width="141"  height="44" class="paragraping"><strong>&nbsp;&nbsp;&nbsp;Do u Have Bank Ac</strong></td>
            <td width="100" class="phone"><select name="loanamount" style="border: 1px solid purple">
                <option value="--Select--">----------Select----------</option>
                <option value="Yes">Yes</option>
                <option value="No">No</option>
				
              </select></td>
          </tr>
		
		   <tr> 
            <td width="133" height="44" class="paragraping"><strong>Profession</strong></td>
            <td width="150" class="phone"><input type="text" size="15" name="project" style="border: 1px solid #CB974B"></td>
			   <td width="141" height="44" class="paragraping"><strong>&nbsp;&nbsp;&nbsp;Company Name </strong></td>
            <td width="100" class="phone"><input type="text" size="15" name="propertyadd" style="border: 1px solid #CB974B"></td>
          </tr>
		    <tr> 
            <td width="133" height="44" class="paragraping"><strong>Designation</strong></td>
            <td width="150" class="phone"><input type="text" size="15" name="cost" style="border: 1px solid #CB974B"></td>
			   <td width="141" height="44" class="paragraping"><strong>&nbsp;&nbsp;&nbsp;Monthly salary </strong></td>
            <td width="100" class="phone"><input type="text"  size="15" name="construct" style="border: 1px solid #CB974B"></td>
          </tr>
          <tr> 
            <td height="70"></td>
            <td><input type="submit" name="B1" class="button2" value="Submit" style="border: 1px solid #CB974B"> 
              <input type="reset" name="reset" class="button2" value="Clear" style="border: 1px solid #CB974B"></td>
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
