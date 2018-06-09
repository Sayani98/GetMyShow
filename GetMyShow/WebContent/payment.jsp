<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Payment Summary</title>
<link rel="stylesheet" href = "CSS/style.css"></link>
<script type="text/javascript" src="jquery-3.2.1.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	  $("#btn").on('click', function(event) {

	   
	    if (this.hash !== "") {
	      event.preventDefault();
	      var hash = this.hash;

	      $('html, body').animate({
	        scrollTop: $(hash).offset().top
	      }, 800, function(){
	   
	        window.location.hash = hash;
	      });
	    }
	  });
	});
	
$(document).ready(function(){
    $("#flip1").click(function(){
        $("#panel1").slideToggle("fast");
    });
});
$(document).ready(function(){
    $("#flip2").click(function(){
        $("#panel2").slideToggle("slow");
    });
});
</script>
<style type="text/css">
body{
background-color: white;
}
#btn:hover,#btn:active{
	background-color:white;

}
.first {
    width: 100%;
    height: 1000px;
    }
.p1{
background-color: white;
width:600px;
border: 1px solid white;
padding: 25px;
border-radius: 20px;
box-shadow: 0px 8px 16px 10px rgba(0, 0, 0, 0.2), 8px 8px 20px 8px rgba(0, 0, 0, 0.19);
margin-top:100px;
}
.second {
background-color: #f7f7f7;
width: 100%;
height: 1000px;
}
#crnum,#name{
width: 150%;
padding: 12px 20px;
margin: 8px 0px;
display: inline-block;
border: 1px solid #ccc;
border-radius: 4px;
box-sizing: border-box;
}
#cvv{
width: 100px;
padding: 12px 20px;
margin: 8px 0px;
display: inline-block;
border: 1px solid #ccc;
border-radius: 4px;
box-sizing: border-box;
}
#mm,#yy{
width: 70px;
padding: 12px 15px;
margin: 8px 0px;
display: inline-block;
border: 1px solid #ccc;
border-radius: 4px;
box-sizing: border-box;
}
.pay{
background-color: #f0f0f0;
width:900px;
border: 1px solid white;
padding: 25px;
border-radius: 20px;
box-shadow: 0px 8px 16px 10px rgba(0, 0, 0, 0.2), 8px 8px 20px 8px rgba(0, 0, 0, 0.19);
}
#flip1,#flip2{
    padding: 20px;
    text-align: Center;
    background-color: #f3f3f3;
    border: solid 1px #c3c3c3;
    border-radius: 4px;
    cursor:pointer;
    width:100%;
    font-family:monospace;
	font-weight: bold;
	font-size : 120%;
}
#panel1,#panel2{
display:none;
padding: 5px;
background-color: #f6f6f6;
border: solid 1px #c3c3c3;
width:100%;
height:800px
}
input[type=submit]{
border-radius: 4px;
border : line ;
cursor : pointer ;
margin : 4px 4px ;
padding : 12px 20px ;
box-shadow: 3px 3px 3px black;
background-color:red;
color:white;
}
select{
	width : 150%;
	border-radius : 4px ;
	border : line ;
	padding : 12px 20px ;
	box-shadow: 3px 3px 3px black;
	cursor: pointer;
	box-sizing: border-box;
    display: inline-block;
    margin: 8px 0 ;
}
</style>
</head>
<body>
<br>
<center><img src="image/logo.png"></center>
<%
String mname = request.getParameter("mname");
String seats = request.getParameter("seats");
String total = request.getParameter("total");
String seatNum = request.getParameter("seatNumber");
String hname = request.getParameter("hname");
String time = request.getParameter("time");
%>
<div class = "first">
<center>
<center><p style = "font-family: monospace;font-size: 180%;color: green; font-weight:bold;">Payment Summary</p></center>
<div class = "p1">
<table>
<tr>
<td>Movie Name :</td>
<td><%=mname%></td>
</tr>
<tr>
<td>tickets :</td>
<td><%=seats%></td>
</tr>
<tr>
<td>Amount Payable:</td>
<td><%=total %></td>
</tr>
</table>
</div>
<center><a id="btn" href= "#section2"><img alt="" src="image/arrow2.gif" width="100" height="100"></a></center>
</center>
</div>
<div class="second" id="section2">
<center><p style = "background-color:green;font-family: monospace;font-size: 180%;color: white; font-weight:bold;">Payment Methods</p></center>
<div id="flip1">Credit/Debit Card</div>
<div id= "panel1">
<center>
<div class= "pay">
<form action="eticket.jsp">
<input type= "hidden" name= "mname" value = "<%=mname%>">
<input type= "hidden" name= "seatNumber" value = "<%=seatNum%>">
<input type= "hidden" name= "hname" value = "<%=hname%>">
<input type= "hidden" name= "time" value = "<%=time%>">
<table>
<tr><td></td></tr>
<tr><td>Card Number<br><input type="text" placeholder="ENTER YOUR CARD NUMBER" id="crnum" ></td></tr>
<tr><td><input type="text" placeholder="NAME ON THE CARD" id="name"></td></tr>
<tr><td>CVV<br><input type="text" placeholder="CVV" id="cvv" ></td><td>Expiry<br><input type="text" placeholder="MM" id="mm"> <input type="text" id = "yy" placeholder="YY">
</td></tr>
<tr><td><input type="submit" value = "MAKE PAYMENT"></td></tr>
</table>
</form>
</div>
</center>
</div>
<div id="flip2">Net-Banking</div>
<div id = "panel2">
<center>
<div class="pay">
<form action="eticket.jsp">
<input type= "hidden" name= "mname" value = "<%=mname%>">
<input type= "hidden" name= "seatNumber" value = "<%=seatNum%>">
<input type= "hidden" name= "hname" value = "<%=hname%>">
<input type= "hidden" name= "time" value = "<%=time%>">
<table>
<tr><td>Select Bank<br>
<select>
<option>Allahabad Bank</option>
<option>Axis bank</option>
<option>Bandhan Bank</option>
<option>Bank of Baroda</option>
<option>Canara Bank</option>
<option>Federal Bank</option>
<option>HDFC Bank</option>
<option>ICICI Bank</option>
<option>IDFC Bank</option>
<option>IDBI Bank</option>
<option>Indian Overseas Bank</option>
<option>IndusInd Bank</option>
<option>Kotak Mahindra Bank</option>
<option>Oriental Bank of Commerce</option>
<option>Punjab National Bank</option>
<option>State Bank of India</option>
<option>Syndicate Bank</option>
<option>UCO Bank</option>
<option>Union Bank of India</option>
<option>Yes Bank</option>
</select></td></tr>
<tr><td><input type = "submit" value= "MAKE PAYMENT"></td></tr>
</table>
</form>
</div>
</center>
</div>
</div>
</body>
</html>