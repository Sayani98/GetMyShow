<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Administrator</title>
<script type="text/javascript" src="jquery-3.2.1.js"></script>
<script type="text/javascript"></script>
<link rel="stylesheet" href = "CSS/style.css"></link>
<style type="text/css">
td{
width:300px;
color : black ;
text-shadow : 1px 1px 2px grey,1px 1px 2px grey ;
font-size : 120%;
padding : 20px;
font-family:monospace;
font-weight: bold;
}
#lo:link,#lo:visited{
	color: blue;
	padding:2px,3px;
	font-size:120%;
	text-decoration: none;
	text-shadow: 0px 0px 0px red , 0px 0px 0px red ;
	font-family:monospace;
	background-color: #f7f7f7 ;
}
#lo:hover,#lo:active{
    color:red;
	padding:2px,3px;
	font-size:120%;
	text-decoration: none;
	text-shadow: 0px 0px 0px red , 0px 0px 0px red ;
	text-decoration:underline ;
	font-family:monospace;
    background-color: #f7f7f7 ;
}
</style>
</head>
<body>
<%if(session.getAttribute("UNAME") != null && session.getAttribute("PASS")!= null){ %>
<p style = "text-align: right;" ><a id="lo" href="admin?link=248">Log Out</a></p>
<br>
<br>
<center><img src="image/logo.png"></center>
<center>
<form action="AddMovie" method = "post">
<table>
<tr>
<td>Movie Name</td>
<td><input type = "text" name = "mname"></td>
</tr>
<tr>
<td>Hall Name</td>
<td><input type = "text" name = "hname"></td>
</tr>
<tr>
<td>Total Seats</td>
<td>
<script>
function validateSeats()
{
	var seats=document.getElementById("n3").value;
	var flag=0;
	if(seats.length !== 0){
		document.getElementById("seats").innerHTML="";
	for(var i=0;i< seats.length;i++)
	{
		if(seats.charCodeAt(i) < 48 || seats.charCodeAt(i) > 57)
			{
			document.getElementById("seats").innerHTML="Field must contain only numbers";
			document.getElementById("seats").style.color="red";
			document.getElementById("n3").value = "";
			break;
			}
		else{
			document.getElementById("seats").innerHTML="";
		}
	}
	}
	else
	{
		document.getElementById("seats").innerHTML="Field cannot be empty";
		document.getElementById("seats").style.color="red";
		document.getElementById("n3").value = "";
	}
}
</script>
<input type= "text" name= "seats" id="n3" onblur = "validateSeats()"><br><label id = "seats"></label></td>
</tr>
<tr>
<td>Movie time</td>
<td><input type="text" name= "time"></td>
</tr>
<tr>
<td>Ticket Price</td>
<td>
<input type="text" name= "price" id="n4"><br><label id="price"></label></td>
</tr>
<tr>
<td></td>
<td><input type = "submit" name = "submit" value = "SUBMIT" >   <input type = "reset" value="RESET" ></td>
</tr>
</table>
</form>
</center>
<%}
else{ 
	response.sendRedirect("admin.jsp");
}%>
</body>
</html>