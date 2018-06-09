<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User sign-in</title>
<link rel="stylesheet" href = "CSS/style.css"></link>
<style type="text/css">
div{
background-color: white;
width:1000px;
border: 1px solid white;
padding: 25px;
border-radius: 20px;
box-shadow: 0px 8px 16px 10px rgba(0, 0, 0, 0.2), 8px 8px 20px 8px rgba(0, 0, 0, 0.19);
}
a:link,a:visited{
	color:red;
	padding:2px,3px;
	font-size:120%;
	text-decoration: none;
	text-shadow: 0px 0px 0px red , 0px 0px 0px red ;
	font-family:monospace;
}
a:hover,a:active{
	color:red;
	padding:2px,3px;
	font-size:120%;
	text-decoration: none;
	text-shadow: 0px 0px 0px red , 0px 0px 0px red ;
	font-family:monospace;
	background-color:white;
	}
#a:hover,#a:active{
    color:red;
	padding:2px,3px;
	font-size:120%;
	text-decoration: none;
	text-shadow: 0px 0px 0px red , 0px 0px 0px red ;
	font-family:monospace;
    background-color: #f7f7f7 ;
}
</style>
</head>
<body>
<center><img src="image/logo.png"></center>
<center>
<form action="movies.jsp">
<div>
<p style = "background-color:green;font-family:monospace;font-size: 150%;color: white ; text-align: center ; text-shadow : 2px 2px 3px black , 2px 2px 3px black;">Sign-In</p>
<table>
<tr>
<td>Email</td>
<td><input type= "email" name = "email" ></td>
</tr>
<tr>
<td>Password</td>
<td><input type = "password" name = "password"></td>
</tr>
<tr>
<td></td>
<td><input type = "submit" name = "submit" value = "Sign-in" ></td>
</tr>
</table>
<p style = "font-family:monospace;font-size:80%">Still Not Connected? <a href="signup.jsp">Sign Up</a></p>
</div>
</form>
</center>
<br>
<p style = "font-family:monospace;font-size:80%">Administrator? <a id="a" href="admin.jsp">Click Here</a> to manage site</p>
</body>
</html>