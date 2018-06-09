<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Administrator</title>
<link rel="stylesheet" href = "CSS/style.css"></link>
<style type="text/css">
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
<form action="DeleteMovie" method = "post">
<table>
<tr>
<td>Movie Name</td>
<td><input type = "text" name = "mname"></td>
</tr>
<tr><td></td><td><input type="submit" value="DELETE MOVIE"></td></tr>
</table>
</form>
</center>
<%}
else{ 
	response.sendRedirect("admin.jsp");
}%>
</body>
</html>