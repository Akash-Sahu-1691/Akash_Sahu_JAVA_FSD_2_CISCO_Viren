<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true" autoFlush="true"
	import="java.util.* , java.sql.*"%>
    <%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="backdrop-filter: blur(2px); background-image: url('https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/View_from_the_airplane_window.jpg/1280px-View_from_the_airplane_window.jpg');">


	<h2 align="center" style="color: blacksmoke;">
		<h1 style="text-align: center; color: Blue; font-size: 36px;">FlyAway</h1>
	</h2>
	<br>
	<h3 align="center">Password Change</h3>
	
	<form action="Change" method="post">
		<center>
			<table>
				<tr>
					<td>Current Password:</td>
					<td><input type="password" name="adminPassword"></td>
				</tr>
				<tr></tr>
				<tr>
					<td>New Password:</td>
					<td><input type="password" name="newPassword"></td>
				</tr>
				<tr></tr>
				<tr>
					<td>Confirm New Password:</td>
					<td><input type="password" name="renewPassword"></td>
				</tr>
				<tr></tr>
				<tr></tr>
				<tr></tr>
				<tr>
					<td>
					<td><input type="submit" value="submit"></td>
				</tr>
			</table>
		</center>
	</form>

</body>
</html>