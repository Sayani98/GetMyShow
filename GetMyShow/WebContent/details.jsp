<%@page import="java.sql.ResultSet"%>
<%@page import="Daou.TheDaou"%>
<%@page import="Bean.TheBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>booking details</title>
<link rel="stylesheet" type= "text/css" href = "CSS/print.css" media= "print"></link>
<link rel="stylesheet" href = "CSS/style.css" media= "screen"></link>
<style type="text/css">
table{
margin-top : 100px;
}
div{
background-color: white;
width:600px;
border: 1px solid white;
padding: 25px;
border-radius: 20px;
box-shadow: 0px 8px 16px 10px rgba(0, 0, 0, 0.2), 8px 8px 20px 8px rgba(0, 0, 0, 0.19);
}
</style>
<script type="text/javascript">
function printPage()
{
	window.print();
}
</script>
</head>
<body>
<br>
<center><img src="image/logo.png"></center>
<%
String mname = request.getParameter("moviename");
String [] seats = request.getParameterValues("seats");
int seatsSelected = seats.length;
TheBean bobj = new TheBean();
bobj.setMname(mname);
TheDaou dobj = new TheDaou();
int totalSeats = dobj.returnSeats(bobj);
int remainder = totalSeats-seatsSelected;
ResultSet rs = dobj.movieDetails(bobj,remainder);
String s = "";
for(int i = 0 ; i < seatsSelected;i++ ){
	if(i == seatsSelected-1){
		s=s+seats[i];
	}
	else{
		s= s+seats[i]+"," ;
	}
}%>
<form action="payment.jsp">
<input type= "hidden" name= "mname" value = "<%=mname%>">
<input type = "hidden" name = "seats" value= "<%=seatsSelected%>">
<input type = "hidden" name = "seatNumber" value= "<%=s%>">
<center>
<div>
<p style = "font-family:monospace;font-size: 150%;color: red ; text-align: center ; text-shadow : 2px 2px 3px black , 2px 2px 3px black;"><i>Booking Summary</i></p>
<%
while(rs.next()){
%>
<input type="hidden" name= "total" value = "<%=(seatsSelected*rs.getDouble(4))%>">
<input type="hidden" name= "hname" value = "<%=(rs.getString(2))%>">
<input type="hidden" name= "time" value = "<%=(rs.getString(5))%>">
<table>
<tr>
<td>Movie Name :</td>
<td><%=rs.getString(1)%></td>
</tr>
<tr>
<td>Hall Name :</td>
<td><%=rs.getString(2) %></td>
</tr>
<tr>
<td>Show Time :</td>
<td><%=rs.getString(5) %></td>
</tr>
<tr>
<td>Seat Numbers Selected :</td>
<td><%=s %></td>
</tr>
<tr>
<td>Total Amount(in Rs) :</td>
<td><%=(seatsSelected*rs.getDouble(4))%>/-</td>
</tr>
</table>
<%} %>
<input type= "submit" value= "Make Payment">    <input type="button" value="Print Details" onclick="printPage()">
</div>
</center>
</form>
</body>
</html>