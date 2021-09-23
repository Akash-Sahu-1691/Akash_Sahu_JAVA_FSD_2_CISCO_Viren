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
<body style=" background-image: url('https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/View_from_the_airplane_window.jpg/1280px-View_from_the_airplane_window.jpg');">

	<h2 align="center" style="color: blacksmoke;">
		<b>FlyAway</b>
	</h2>
	<%
		if (Login.isLoggedIn) {
	%>
	<%
			String airlineName = request.getParameter("airlineName");
			String flightNumber = request.getParameter("flightNumber");
			String sourceCity = request.getParameter("sourceCity");
			String destinationCity = request.getParameter("destinationCity");
			String departureTime = request.getParameter("departureTime");
			String arrivalTime = request.getParameter("arrivalTime");
			String seats_avail = request.getParameter("seats_avail");
			//removed booked seats
			String dateOfTravel = request.getParameter("dateOfTravel");
			String className = request.getParameter("className");
			String price = request.getParameter("price");
			
			

			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "root");
				Statement st = conn.createStatement();
				
				int i = st.executeUpdate(
						"insert into project.flight_details(airline_name,price,flight_no,src_city,des_city,dept_time,arr_time,seat_avail,date_of_travel,class)values('"
								+ airlineName + "','" + price + "','" + flightNumber + "','" + sourceCity
								+ "','" + destinationCity + "','" + departureTime + "','" + arrivalTime + "','"
								+ seats_avail + "','" + dateOfTravel + "','" + className + "')");
				//out.println("Data is successfully inserted!");
			} catch (Exception e) {
				System.out.print(e);
				e.printStackTrace();
			}
	
		try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "root");
				Statement st = conn.createStatement();

				
			} catch (Exception e) {
				System.out.print(e);
				e.printStackTrace();
			}
	%>
	<center>
		<br>
		<br>
		<br>
		<h4>Record inserted successfully!!</h4>
		<form method="post" action="AdminDashboard.jsp">
			<input type="submit" value="Go to dashboard">
		</form>
	</center>
	<%
		} else {
			out.print("You must Login first");
		}
	%>



</body>
</html>