<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>GetMyShow</title>
<link rel="stylesheet" href = "CSS/style.css"></link>
<style type="text/css">
div{
background-color: white;
width:600px;
border: 1px solid white;
padding: 25px;
border-radius: 20px;
box-shadow: 0px 8px 16px 10px rgba(0, 0, 0, 0.2), 8px 8px 20px 8px rgba(0, 0, 0, 0.19);
}
</style>
</head>
<body>
<br>
<br>
<center><img src="image/logo.png"></center>
<p></p>
<p style = "font-family: monospace;font-size: 250%;color: black ;text-align: center; text-shadow : 2px 2px 3px red , 2px 2px 3px red;" ><i>Admin Login</i></p>
<center>
<form action="admin" method="post">
<div>
<table>
<tr>
<td>Username</td>
<td><input type= "text" name = "uname" ></td>
</tr>
<tr>
<td>Password</td>
<td><input type = "password" name = "pass"></td>
</tr>
<tr>
<td></td>
<td><input type = "submit" value = "Login">    <input type = "reset" value = "Reset"></td>
</tr>
</table>
</div>
</form>
</center>
</body>
</html>