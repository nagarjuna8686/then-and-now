<%@ page language="java" import="java.sql.*,databaseconnection.*;" errorPage="" %>
<%  String username=(String)session.getAttribute("username");
System.out.println(username);
String s=(String)session.getAttribute("iname");
System.out.println("itemname in graph is "+s);

String p=request.getParameter("id");
System.out.println("itemname in graph is "+p);

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
<% 

PreparedStatement psmt=null;
ResultSet rs=null;
PreparedStatement psmt1=null;
ResultSet rs1=null;
try

        {

Connection con=databasecon.getconnection();

psmt =con.prepareStatement("select count(trust) from comments where iname='"+s+"'  and  (trust LIKE '%Good%')  group by iname");
psmt1 =con.prepareStatement("select count(trust) from comments where iname='"+s+"'  and  (trust LIKE '%Bad%')  group by iname");
rs=psmt.executeQuery();
rs1=psmt1.executeQuery();
if(rs.next())

    {
	String rate=rs.getString(1);
	int y = Integer.parseInt(rate);
System.out.println("jai"+y);


if(rs1.next())
{
String z=rs1.getString(1);
int x = Integer.parseInt(z);
System.out.println("file id jai"+x);

 %>

<script type="text/javascript" src="/assets/script/canvasjs.min.js"></script>
<script type="text/javascript" src="css/canvasjs.min.js"></script>
  	
      <script type="text/javascript">
      window.onload = function () {
          var chart = new CanvasJS.Chart("chartContainer", {
              theme: "theme2",//theme1
              title:{
                  text: " "              
             },
              data: [              
              {
// Change type to "bar", "splineArea", "area", "spline", "pie",etc.
                  type: "column",
                  dataPoints: [
                 
               
				  { label: "UserReview[Good]", y:<%=y%> },
				  { label: "UserReview[Bad]", y: <%=x%> }
				 
                  ]
              }
              ]
          });

          chart.render();
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
	  	  	  <a href="searchview.jsp" class="tp_menu2">Back</a> <img src="images/tp_divider.gif" width="2" height="39" alt="" class="tp_divider" />

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
            <p class="tp_heading"><font size="5" >Graph Representation of User Review About Produts</font></p>
          </div>
          <div class="cnt_block1">
            <div style="float:left; display:inline;  height:overflow;">
		
 		 
				<div id="chartContainer" style="height: 300px; width: 100%;">
  
<%
    
	}


}
}

catch(Exception e)

        {

out.println(e);

}

%>
	  </div>
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
