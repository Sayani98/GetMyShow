<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>administrator</title>
<link rel="stylesheet" href = "CSS/style.css"></link>
<style type="text/css">
div{
background-color: white;
width:1000px;
border: 1px solid white;
padding: 25px;
border-radius: 20px;
box-shadow: 0px 8px 16px 10px rgba(0, 0, 0, 0.2), 8px 8px 20px 8px rgba(0, 0, 0, 0.19);
margin-top:60px;
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
<div>
<p style = "background-color:green;font-family: monospace;font-size: 250%;color: white ;text-align: center;" >Select an Option</p>

<center>
<a href= "addmovie.jsp" ><b><i>Add a movie</i></b></a><br><br>
<a href= "deletemovie.jsp"><b><i>Delete a Movie</i></b></a><br><br>
<a href= "updateshowtimings.jsp"><b><i>Update show timings</i></b></a><br><br>
</center>
</div>
</center>
<%}
else{ 
	response.sendRedirect("admin.jsp");
}
%>
</body>
</html>