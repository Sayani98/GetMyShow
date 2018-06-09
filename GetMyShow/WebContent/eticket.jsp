<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>e-ticket</title>
<link rel="stylesheet" href = "CSS/style.css"></link>
<style type="text/css" media="print">
input[type = submit],[type = reset],[type=file],[type=button]
{
	display : none;
}
</style>
<style>
td {
    border: 3px solid #dddddd;
    text-align: left;
    padding: 8px;
</style>
<script type="text/javascript">
function getRandomInt(min, max) {
	  min = Math.ceil(min);
	  max = Math.floor(max);
	  return Math.floor(Math.random() * (max - min+1)) + min;
	}
function bookId(){
	var a = String.fromCharCode(71);
	var b = String.fromCharCode(77);
	var c = String.fromCharCode(83);
  	var d = String.fromCharCode(getRandomInt(65,90));
  	var e = String.fromCharCode(getRandomInt(65,90));
  	var f = String.fromCharCode(getRandomInt(48,57));
  	var g = String.fromCharCode(getRandomInt(48,57));
  	var h = String.fromCharCode(getRandomInt(48,57));
	var str =a+b+c+d+e+f+g+h;
	document.getElementById("bkid").innerHTML = str;
}
function dateSet()
{
	var day = ["Sun","Mon","Tue","Wed","Thu","Fri","Sat"];
	var month = ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"];
	var today = new Date();
	var tomo = new Date();
	tomo.setDate(today.getDate()+1);
	var a = day[(tomo.getDay())];
	var b = (tomo.getDate());
	var c = month[tomo.getMonth()];
	var d = tomo.getFullYear();
	var s = a+", "+b+"-"+c+"-"+d;
	document.getElementById("date").innerHTML = s;
}
function printPage()
{
	window.print();
}
</script>
</head>
<body onload="dateSet();bookId()">
<img src="image/logo.png" width= 400 height= 100><p style = "font-family:monospace;font-size: 200%;color: black;text-align:right">E-TICKET</p>
<p style = "font-family:monospace;font-size: 70%;color: black;">*This is not a ticket.Exchange this at the box office for your tickets</p>
<%
String mname = request.getParameter("mname");
String hname = request.getParameter("hname");
String seats = request.getParameter("seatNumber");
String time = request.getParameter("time");
%>
<br>
<p>Dear Customer,</p>
<center>
<table>
<tr><td>BOOKING ID:</td><td><p id="bkid"></p></td></tr>
<tr><td>MOVIE:</td><td><%=mname%></td></tr>
<tr><td>Hall:</td><td><%=hname %></td></tr>
<tr><td>SEATS:</td><td><%=seats %></td></tr>
<tr><td>SHOW TIME:</td><td><%=time%></td></tr>
<tr><td>DATE:</td><td><p id = "date"></p></td></tr>
</table>
</center>
<p style = "font-family:monospace;font-size: 120%;color: black;"><b>Ticket Pickup Details:</b></p>
<p style = "font-family:monospace;font-size: 90%;color: black;">Now you can collect your tickets from the box-office at the cinema hall by using the booking id above</p>
<input type="button" value="PRINT TICKET" onclick="printPage()">
</body>
</html>