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
<body style="backdrop-filter: blur(3px); background-image: url('https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/View_from_the_airplane_window.jpg/1280px-View_from_the_airplane_window.jpg');">

	<h2 align="center" style="color: blacksmoke;">
		<h1 style="text-align: center; color: Blue; font-size: 36px;">FlyAway</h1>
	</h2>
	<br>
	<%
		if (Login.isLoggedIn) {
	%>
	<h3 align="center">
		<b>Enter New Flight Details</b>
	</h3>
	
	<form action="EnterFlight.jsp" method="post">
		<table align="center">
			<tr>
				<td>Airline Name:</td>
				<td><input type="text" name="airlineName"></td>
			</tr>
			<tr>
				<td></td>
			</tr>
			<tr>
				<td>Flight Number:</td>
				<td><input type="text" name="flightNumber"></td>
			</tr>
			<tr>
				<td></td>
			</tr>
			<tr>
				<td>Source City:</td>
				<td><select name="sourceCity">
						<option value="New Delhi">New Delhi</option>
						<option value="Mumbai">Mumbai</option>
						<option value="Bangalore">Bangalore</option>
						<option value="Kolkata">Kolkata</option>
				</select></td>
			</tr>
			<tr>
				<td></td>
			</tr>
			<tr>
				<td>Destination City:</td>
				<td><select name="destinationCity">
						<option value="New Delhi">New Delhi</option>
						<option value="Mumbai">Mumbai</option>
						<option value="Bangalore">Bangalore</option>
						<option value="Kolkata">Kolkata</option>
				</select></td>
			</tr>
			<tr>
				<td></td>
			</tr>
			<tr>
				<td>Departure Time:</td>
				<td><input type="text" name="departureTime" placeholder="HH:MM"></td>
			</tr>
			<tr>
				<td></td>
			</tr>
			<tr>
				<td>Arrival Time:</td>
				<td><input type="text" name="arrivalTime" placeholder="HH:MM"></td>
			</tr>
			<tr>
				<td></td>
			</tr>
			<tr>
				<td>Seats Available:</td>
				<td><input type="text" name="seats_avail"></td>
			</tr>

			<tr>
				<td></td>
			</tr>
			<tr>
				<td>Date of Travel:</td>
				<td><input type="text" name="dateOfTravel"
					placeholder="DD-MM-YYYY"></td>
			</tr>
			<tr>
				<td></td>
			</tr>
			<tr>
				<td>Class:</td>
				<td><select name="className">
						<option value="Economy">Economy</option>
						<option value="Business">Business</option>
				</select></td>
			</tr>
			<tr>
				<td></td>
			</tr>
			<tr>
				<td>Price:</td>
				<td><input type="text" name="price"></td>
			</tr>
			<tr>
				<td></td>
			</tr>
			<tr>
				<td></td>
			</tr>
			<tr>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="submit"></td>
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