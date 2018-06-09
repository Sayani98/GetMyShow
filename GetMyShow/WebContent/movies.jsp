<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Daou.TheDaou"%>
<%@page import="Bean.TheBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ongoing Movies</title>
<link rel="stylesheet" href = "CSS/style.css"></link>
<style type="text/css">
body{
 background-image : url("");
}
td {
    border: 3px solid #dddddd;
    text-align: left;
    padding: 8px;
    
}
td{
	color : red ;
	text-shadow : 2px 2px 2px black,2px 2px 2px black ;
	font-size : 150%;
	padding : 20px;
	font-family:monospace;
	font-weight: bold;
}
input[type = radio]
{
	width:25px ;
	position:relative;
	height:25px;
	cursor:pointer ;
	margin-right: 8px ;
	box-shadow: inset 2px 2px 1px 1px grey, 1px 1px 1px 1px black;
}
tr:nth-child(even) {
    background-color: #dddddd;
}
</style>
</head>
<body>
<br>
<br>
<center><img src="image/logo.png"></center>
<p style = "background-color:green;font-family:monospace;font-size: 150%;color: white ; text-align: center ;">MOVIES FOR TOMORROW</p>
<%
PrintWriter sd = response.getWriter();
String email = request.getParameter("email");
String password = request.getParameter("password");
TheBean bobj = new TheBean();
bobj.setEmail(email);
bobj.setPassword(password);
TheDaou dobj = new TheDaou();
String pass = dobj.signIn(bobj);
if(password.equals(pass)){
	ResultSet rs = dobj.viewMovies();%>
	<form action="seats.jsp">
	<table width = 100%>
	<tr>
	<th></th>
	<th>Movie Name</th>
	<th>Hall Name</th>
	</tr>
	<%while(rs.next()){%>
	<tr><td><center><input type = "radio" name = "mname"  value= "<%=rs.getString(1)%>"></center></td><td><%=rs.getString(1)%></td><td><%=rs.getString(2) %></td></tr>
	<%}%>
	</table>
	<center><input type = "submit" value = "BOOK MOVIE">   <input type="reset" value= "RESET"></center>
	<%}
else{
	response.sendRedirect("signin.jsp");
}
%>
</form>
</body>
</html>