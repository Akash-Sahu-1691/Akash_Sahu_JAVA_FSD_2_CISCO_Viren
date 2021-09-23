<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true" autoFlush="true"
	import="java.util.* , java.sql.*"%>
	
	<%@page import="com.phase2.project.Login"%>
    
    <%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>

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
	<%
		if (Login.isLoggedIn) {
	%>
	<h3 align="center">
		<b>Remove a Flight </b>
	</h3>
	<form action="Remove.jsp" method="post">
		<table align="center">
			<tr>
				<td>Flight Number:</td>
				<td><input type="text" name="flightNumber"></td>
			</tr>
			
			<tr>
			<td></td>
			<td><input style="margin-top: 30px" type="submit" value="submit"></td>
			</tr>
			
		</table>
	</form>
	<%
		} else {
			out.print("You must Login first");
		}
	%>

</body>
</html>