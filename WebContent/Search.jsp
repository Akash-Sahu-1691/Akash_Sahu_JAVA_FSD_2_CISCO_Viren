<%@page import="jdk.nashorn.internal.ir.RuntimeNode.Request"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" session="true" autoFlush="true"
	import="java.util.* , java.sql.*"%>


<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="backdrop-filter: blur(2px); background-image: url('https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/View_from_the_airplane_window.jpg/1280px-View_from_the_airplane_window.jpg');">
	<center>
		<br>
		<br>
		<h1 style="text-align: center; color: Blue; font-size: 36px;">FlyAway</h1>
		<br>
		
		<h3 align="center">Search your flight..!</h3>

		<form action="Show_Flight.jsp" method="post" align="center">

			<table align="center" style="margin-top:-80px;margin-left:480px;">

				<tr>

					<td>Date</td>
					<td>:</td>
					<td><input type="text" id="date" name="date"
						placeholder="ex- 12-10-2021 "> <br></td>
					<td><small style="margin-left: 10px;color:yellow;">** DD-MM-YYYY format **</small></td></tr>
					<br>
					<br>
					<br>
				

				<tr>
					<td>Source</td>
					<td>:</td>
					<td><select name="srcCity">
							<option value="New Delhi">New Delhi</option>
							<option value="Mumbai">Mumbai</option>
							<option value="Bangalore">Bangalore</option>
							<option value="Kolkata">Kolkata</option>
					</select></td>

					<br>
					<br>
					<br>
				</tr>

				<tr>
					<td>Destination</td>
					<td>:</td>
					<td><select name="destCity">
							<option value="Mumbai">Mumbai</option>
							<option value="New Delhi">New Delhi</option>
							
							<option value="Bangalore">Bangalore</option>
							<option value="Kolkata">Kolkata</option>
					</select></td>

				</tr>

				
						<button style="margin:0 auto; margin-bottom:-60px;" type="submit">Submit</button>
					

				<br>



				</form>


				</center>
</body>
</html>