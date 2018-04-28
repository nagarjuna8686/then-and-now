<%@ page import="java.sql.*,databaseconnection.*"%>
<%@page import="discrimination.*"%>
<%
				
				
				String mylocation=null,myincome=null,myemptype=null;
				int id=0;
				 String id2=request.getParameter("id2");
				String rulelocation=(String)session.getAttribute("rulelocation");
				String ruleincome=(String)session.getAttribute("ruleincome");
				String ruleemptype=(String)session.getAttribute("ruleemptype");
				
				
				
				
				
				
				ResultSet rs=null;
				try
				{

					Connection con=databasecon.getconnection();
					Statement st = con.createStatement();	
	

					String qry="select * from loanform where id='"+id2+"'";
					rs =st.executeQuery(qry);
		
while(rs.next())
   {
    mylocation=rs.getString("address");  
	myincome=rs.getString("income");
	myemptype=rs.getString("emptype");
 
	
	
		if(mylocation.equals(rulelocation)){
		
		if((Integer.parseInt(myincome))>=(Integer.parseInt(ruleincome))){
		
			if(myemptype.equals(ruleemptype)){
			
			%>
		
			
			
			<%}
			else{
			
					response.sendRedirect("indirect3.jsp?id3="+id2+"");
			}
		}
		else{
			response.sendRedirect("indirect3.jsp?id3="+id2+"");
		}
	}
	 else{
			response.sendRedirect("indirect3.jsp?id3="+id2+"");
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
	   <a href="managelogin.jsp" class="tp_menu2">ManagerLogin</a> <img src="images/tp_divider.gif" width="2" height="39" alt="" class="tp_divider" /> 
	   <a href="indirect.jsp" class="tp_menu2">Back</a> </div>
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
            <p class="tp_heading"><font size="5" >InDirectly Accessed Credit Card User Application Detail</font></p>
          </div>
          <div class="cnt_block1">
            <div style="float:left; display:inline;  height:overflow;">
            <fieldset style="border: 1px solid #CB974B ;
border-radius: 10px ;">
    
	   <table width="590" align="left">
         <tr>
		 		 
              <td bgcolor="#FF9900" colspan="4"><strong><font color="#000000">Personal 
                Information</font></strong></td>
		 </tr>
          <tr> 
                    <td width="133" height="37" class="paragraping"><strong>Name 
                      Of The Applicant</strong></td>
            <td width="150" class="name"><font color="#006666" size="4"><strong> :<%=rs.getString("name")%></strong></font></td>
          </tr>
          <tr> 
          <tr> 
                    <td width="133" height="36" class="paragraping"><strong>ResidentalAddress</strong></td>
            <td width="150" class="name"><font color="#006666" size="4"><strong>:<%=rs.getString("address")%></strong></font></td>
          </tr>
          <tr> 
                    <td width="133" height="35" class="paragraping"><strong>ContactNo</strong></td>
            <td width="150" class="email"><font color="#006666" size="4"><strong>:<%=rs.getString("contact")%></strong></font></td>
			            <td width="141" height="35" class="paragraping"><strong>&nbsp;&nbsp;&nbsp;PAN</strong></td>
            <td width="100" class="email"><font color="#006666" size="4"><strong>:<%=rs.getString("pan")%></strong></font></td>
          </tr>
          <tr> 
                    <td width="133" height="36" class="paragraping"><strong>Marital 
                      Status</strong></td>
            <td width="150" class="fielditem"><font color="#006666" size="4"><strong>:<%=rs.getString("marital")%></strong></font></td>
          <td width="141" height="36" class="paragraping"><strong>&nbsp;&nbsp;&nbsp;Date Of Birth</strong></td>
            <td width="100" class="phone"><font color="#006666" size="4"><strong>:<%=rs.getString("dateofbirth")%></strong></font></td>
		  </tr>
           <tr> 
                    <td width="133" height="36" class="paragraping"><strong>Age</strong></td>
            <td width="150" class="phone"><font color="#006666" size="4"><strong>:<%=rs.getString("age")%></strong></font></td>
			   <td width="141" height="36" class="paragraping"><strong>&nbsp;&nbsp;&nbsp;Gender</strong></td>
          <td width="100" class="fielditem"><font color="#006666" size="4"><strong>:<%=rs.getString("gender")%></strong></font></td>
          </tr>
		       <tr> 
            <td width="133" height="40" class="paragraping"><strong>Nationality</strong></td>
            <td width="150" class="phone"><font color="#006666" size="4"><strong>:<%=rs.getString("nationality")%></strong></font></td>
			   <td width="141" height="40" class="paragraping"><strong>&nbsp;&nbsp;&nbsp;Religion</strong></td>
             <td width="100" class="fielditem"><font color="#006666" size="4"><strong>:<%=rs.getString("religion")%></strong></font></td>
          </tr>
          
		  <tr>
		    <td width="133" height="38" class="paragraping"><strong>Purpose Of Credit card</strong></td>
            <td width="150" class="phone"><font color="#006666" size="4"><strong>:<%=rs.getString("loanpurpose")%></strong></font></td>
		  </tr>
		  <tr>
		 		 
              <td height="21" colspan="4" bgcolor="#FF9900"><strong><font color="#000000">Employment 
                Details</font></strong></td>
		 </tr>
		      <tr> 
            <td width="133" height="45" class="paragraping"><strong>Type Of Employment</strong></td>
           <td width="150" class="fielditem"><font color="#006666" size="4"><strong>:<%=rs.getString("emptype")%></strong></font></td>
			   <td width="141" height="45" class="paragraping"><strong>&nbsp;&nbsp;&nbsp;Annual Income</strong></td>
            <td width="100" class="phone"><font color="#006666" size="4"><strong>:<%=rs.getString("income")%></strong></font></td>
          </tr>
		       <tr> 
            <td width="133" height="44" class="paragraping"><strong>No.OfYears in Service</strong></td>
            <td width="150" class="phone"><font color="#006666" size="4"><strong>:<%=rs.getString("service")%></strong></font></td>
			   <td width="141"  height="44" class="paragraping"><strong>&nbsp;&nbsp;&nbsp;Do u Have Bank Ac</strong></td>
            <td width="100" class="phone"><font color="#006666" size="4"><strong>:<%=rs.getString("loanamount")%></strong></font></td>
          </tr>
		
		   <tr> 
            <td width="133" height="44" class="paragraping"><strong>Profession</strong></td>
            <td width="150" class="phone"><font color="#006666" size="4"><strong>:<%=rs.getString("project")%></strong></font></td>
			   <td width="141" height="44" class="paragraping"><strong>&nbsp;&nbsp;&nbsp;Company Name </strong></td>
            <td width="100" class="phone"><font color="#006666" size="4"><strong>:<%=rs.getString("propertyadd")%></strong></font></td>
          </tr>
		    <tr> 
            <td width="133" height="44" class="paragraping"><strong>Designation</strong></td>
            <td width="150" class="phone"><font color="#006666" size="4"><strong>:<%=rs.getString("cost")%></strong></font></td>
			   <td width="141" height="44" class="paragraping"><strong>&nbsp;&nbsp;&nbsp;Monthly salary </strong></td>
            <td width="100" class="phone"><font color="#006666" size="4"><strong>:<%=rs.getString("construct")%></strong></font></td>
          </tr>
               <tr> 
            <td height="70"></td>
            <td><a href="updatestatus.jsp?id4=<%=id2%>"><input type="submit" name="B1" class="button2" value="LoanGranting" style="border: 1px solid #CB974B"></a>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
              <a href="updatestatus1.jsp?id4=<%=id2%>"><input type="reset" name="reset" class="button2" value="Denied" style="border: 1px solid #CB974B"></a></td>
          </tr>
		  
        
      </table>
      </fieldset>
		  
			 
	  
			
				 <%}

   }
   
   catch(Exception x)
   {
   out.println(x);
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
