<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.phase2.project.Store"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%--
	Store.cname = request.getParameter("cardName");
	Store.cno = request.getParameter("cardNumber");
	Store.ccvv = request.getParameter("cardCvv");
	Store.cpin = request.getParameter("cardPin");
	if (Store.cname.equals("") || Store.cno.equals("") || Store.ccvv.equals("") || Store.cpin.equals("")) {
		out.println("Please enter valid card details");
	}
--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Thank You - FlyAway</title>
<style>
.qr {
	float: right;
}

body {
	padding-left: 20px;
	padding-right: 40px;
}
</style>
</head>
<body style="backdrop-filter: blur(2px); background-image: url('https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/View_from_the_airplane_window.jpg/1280px-View_from_the_airplane_window.jpg');">
	<div class="container">
		<div align="center" class="col">

		</div>
		<h2 align="center">
			<span><strong>Thank You,<span> <%=Store.name%><span></span></strong></span>
		</h2>
		<center>
			<p align="center">
				<span><strong>Your ticket has been booked.Your
						Booking ID is</strong></span>
			</p>
			<h1>DFG698V</h1>
			<p>
				<button onclick="window.print()" class="ticket">Print
					Ticket</button>
			</p>
			<span align="left">Ticket Details</span>
		</center>
		<br>
		<div align="right" class="col">
			<img src="https://i.stack.imgur.com/Mspmr.png" class="qr" alt="image" width="250"
				height="250">
		</div>
		<h2>Flight Details</h2>
		<h3>
			<strong><%=Store.src%> to <%=Store.dest%> | <%=Store.date%></strong>
		</h3>
		<h3>
			<strong><%=Store.time%> to <%=Store.timearr%></strong>
		</h3>
		<p align="left"><%=Store.fno%>
			-
			<%=Store.airline_name%>
			(Travellers-
			<%=Store.no_of_passenger%>) |
			<%=Store.flight_class%></p>
		<br>
		<h2>
			<strong>Passenger Details</strong>
		</h2>
		<h3>
			Name-
			<%=Store.name%>
			| Age-
			<%=Store.age%></h3>
		<p>
			Email-
			<%=Store.email%>
			| Phone-
			<%=Store.mobile%></p>
		

	<!--  	<p>
			Payment By-
			
			| Card No-
			
			-->
		
		<h2 align="center" style="margin-top:-30px;">
			<strong>Total Paid- Rs.<%=Store.no_of_passenger * Store.price1%></strong>
		</h2>

	</div>
	<%--
		try {
			String query = "update flightdetails inner join bookingdetails on (flightdetails.flight_no = bookingdetails.flight_num) set booked_seats=booked_seats+? where bookingdetails.booking_id = '"
					+ Store.booking_id + "'";
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/phase2", "root", "root");
			Statement st = conn.createStatement();
			PreparedStatement prst = conn.prepareStatement(query);
			int n = Store.no_of_persons;

			int i = st.executeUpdate("insert into phase2.bookingdetails(email,booking_id,flight_num)values('"
					+ Store.pemail + "','" + Store.booking_id + "','" + Store.fno + "')");
			prst.setInt(1, n);
			prst.executeUpdate();
			//int j=st.executeUpdate("update flightdetails inner join bookingdetails on (flightdetails.flight_no = bookingdetails.flight_num) set booked_seats=booked_seats+n where bookingdetails.booking_id = '"+Store.booking_id+"'");
			int k = st.executeUpdate("update flightdetails set avail_seats=total_seats-booked_seats");
			//out.println("Data is successfully inserted!");
		} catch (Exception e) {
			System.out.print(e);
			e.printStackTrace();
		}
	--%>
</body>
</html>