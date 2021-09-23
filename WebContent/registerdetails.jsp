<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
		<%@page import="com.phase2.project.Store"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="backdrop-filter: blur(2px); background-image: url('https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/View_from_the_airplane_window.jpg/1280px-View_from_the_airplane_window.jpg');">

<h1 style="text-align: center; color: Blue; font-size: 36px;">FlyAway</h1>

<br>

<h2 align="center">Personal Details</h2>

<br>

	<form action="Review_Page.jsp" method="post">

		<table align="center" style="margin-left:500px;">
			<tr>
				<td>Full Name</td>
				
			<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>Address</td>

				<td><input type="text" name="address"></td>
			</tr>
			<tr>
				<td>Age</td>

				<td><input type="number"  name="age"  min="10"
					max="99" maxlength="2"></td>
			</tr>
			<tr>
				<td>Mobile no.</td>

				<td><input type="number"  name="mobile"  min="1000000000"
					max="9999999999" maxlength="10"></td>
			</tr>
			<tr>
				<td>Email Id</td>

				<td><input type="email" name="email"></td>
			</tr>
			<tr>
				<td>Choose</td>
				<td><select id="cars" name="choose">
						<option value="Aadhar">Aadhar Chard</option>
						<option value="Ssn">SSN</option>
						<option value="Passport">Passport</option>
						<option value="Voter">Voter ID</option>
						<option value="Driving">Driving License</option>
				</select> <input type="text" placeholder="Enter number" name="identity"></td>
			</tr>
			
			<tr>
				<td>Country</td>
				<td><input type="text" name="country"></td>
			</tr>
		</table>
		<br><br>
		
		
		<% 
		
		Store.airline_name = request.getParameter("airline_name");
		Store.date = request.getParameter("date");
		Store.src = request.getParameter("src");
		Store.dest = request.getParameter("dest");
		Store.seats = request.getParameter("seats");
		Store.flight_class = request.getParameter("class");
		Store.price = request.getParameter("price");
		Store.time = request.getParameter("time");
		Store.timearr = request.getParameter("timearr");
		Store.fno = request.getParameter("fno");
		
				 out.println("<input name=\"airline_name\" value=\" "+request.getParameter("airline_name") +" \"  type=\"hidden\">");
				 out.println("<input name=\"date\" value=\" "+request.getParameter("date") +" \"  type=\"hidden\">");
				 out.println("<input name=\"src\" value=\" "+ request.getParameter("src") +" \"  type=\"hidden\">");
				 out.println("<input name=\"dest\" value=\" "+request.getParameter("dest")  +" \"  type=\"hidden\">");
				 out.println("<input name=\"seats\" value=\" "+request.getParameter("seats")  +" \"  type=\"hidden\">");
				 out.println("<input name=\"class\" value=\" "+request.getParameter("class") +" \"  type=\"hidden\">");
				 out.println("<input name=\"price\" value=\" "+request.getParameter("price") +" \"  type=\"hidden\">");
				 out.println("<input name=\"time\" value=\" "+ request.getParameter("time") +" \"  type=\"hidden\">");
	    %>
		<button style="margin:0 auto; margin-left:600px;" type="submit">Review Journey</button>
	</form>
</body>
</html>