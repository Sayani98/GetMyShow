<%@page import="Daou.TheDaou"%>
<%@page import="Bean.TheBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Select seats</title>
<link rel="stylesheet" href = "CSS/style.css"></link>
<style type="text/css">
body{
	background-image : url("image/4.jpg");
	background-repeat: no-repeat ;
	background-size: cover ;
	background-attachment: scroll;
	}
input[type = checkbox]
{
width : 25px;
height : 25px ;
margin-right : 20px ;
margin-top : 10px;
}
table{
margin-left: 200px;
margin-right:150px;
margin-top : 180px;
}
td{
color : black ;
	text-shadow : 1px 1px 2px grey,1px 1px 2px grey ;
	font-size : 120%;
	font-family:monospace;
	font-weight: bold;
}
</style>
<script type="text/javascript" src="jquery-3.2.1.js"></script>
<script language="javascript">
function generateSeats(n) {
	var i;
	for(i = 0 ; i< n ; i++){
		if(document.body.style.marginRight){	var brk = document.createElement("br");
	    document.body.appendChild(brk);
	    }
	    var x = document.createElement("INPUT");
	    x.type = "checkbox";
	    x.setAttribute("name","seats");
	    x.value = (i+1);
	    document.getElementById("point").appendChild(x);
	    }


	}
</script>
</head>
<body>
<%String mname = request.getParameter("mname");
TheBean bobj = new TheBean();
bobj.setMname(mname);
TheDaou dobj = new TheDaou();
int seats = dobj.returnSeats(bobj);
%>
<center>
<form action="details.jsp" method="post">
<table>
<tr></tr>
<tr><td><center>Hall Layout</center></td></tr>
<tr>
</tr>
<tr>
<td><input type = "hidden" name = "moviename" value = "<%=mname%>"></td>
</tr>
<tr>
<td>
<p id = "point"></p>
<script type="text/javascript">
generateSeats(<%=seats%>);</script>
</td>
</tr>
<tr>
<td><center><input type = "submit" value = "book Seats">  <input type="reset" value = "reset"></center></td>
</tr>
</table>
</form>
</center>
</body>
</html>