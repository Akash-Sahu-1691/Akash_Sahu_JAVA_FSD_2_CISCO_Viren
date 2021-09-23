<%@page import="javax.imageio.spi.RegisterableService"%>
<%@page import="java.sql.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

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

<h1 style="text-align: center; color: Blue; font-size: 36px;">FlyAway</h1>

	<%
		String date = request.getParameter("date");
	
		String src =  request.getParameter("srcCity");
	
		String dest = request.getParameter("destCity");
		
		Statement st = null;
		Connection conn = null;
		
		String query = "SELECT * FROM flight_details where date_of_travel='" + date + "' AND src_city='" + src+ "' AND des_city='" + dest + "';";
				
		try {
			Class.forName("com.mysql.jdbc.Driver");

			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "root");
			st = conn.createStatement();
			Statement stmt = conn.createStatement();
			
			ResultSet rs = stmt.executeQuery(query);
			
		
 	

			if(rs.next()==true)
			{
				
				 out.println("<h2 align='center'>Search results</h2>");
				 out.println("<h3 align='center'>Flights from "+src+" to "+dest+"</h3>");
				 
				 out.println("<br><br><table width=100% style=\"border: 2px solid #A9E2F3;\">");
					

				 out.println("</td></tr>");
				 out.println("<tr>");
				 out.println("<th>Airline</th>");
				 out.println("<th>Flight number</th>");
				 out.println("<th>Source city</th>");
				 out.println("<th>Destination</th>");
				 out.println("<th>Travel date</th>");
				 out.println("<th>Departure time</th>");
				 out.println("<th>Arrival time</th>");
				 out.println("<th>Available seats</th>");
				 out.println("<th>Price</th>");
				 out.println("<th>Class</th>");
				 out.println("</tr>");
			// loop through the result set
			do {			   
				 out.println("<tr>");
				 out.println("<th style='font-weight:200;'>"+rs.getString("airline_name")+"</th>");
				 out.println("<th style='font-weight:200;'>"+rs.getString("flight_no")+"</th>");
				 out.println("<th style='font-weight:200;'>"+rs.getString("src_city")+"</th>");
				 out.println("<th style='font-weight:200;'>"+rs.getString("des_city")+"</th>");
				 out.println("<th style='font-weight:200;'>"+rs.getString("date_of_travel")+"</th>");
				 out.println("<th style='font-weight:200;'>"+rs.getString("dept_time")+"</th>");
				 out.println("<th style='font-weight:200;'>"+rs.getString("arr_time")+"</th>");
				 out.println("<th style='font-weight:200;'>"+rs.getString("seat_avail")+"</th>");
				 out.println("<th style='font-weight:200;'>"+rs.getString("price")+"</th>");
				 out.println("<th style='font-weight:200;'>"+rs.getString("class")+"</th>");
				 
				 out.println("<form action='registerdetails.jsp' method='post'>");
				 
				 out.println("<input name=\"airline_name\" value=\" "+ rs.getString("airline_name") +" \"  type=\"hidden\">");
				 out.println("<input name=\"date\" value=\" "+ rs.getString("date_of_travel") +" \"  type=\"hidden\">");
				 out.println("<input name=\"src\" value=\" "+ rs.getString("src_city") +" \"  type=\"hidden\">");
				 out.println("<input name=\"dest\" value=\" "+ rs.getString("des_city") +" \"  type=\"hidden\">");
				 out.println("<input name=\"seats\" value=\" "+ rs.getString("seat_avail") +" \"  type=\"hidden\">");
				 out.println("<input name=\"class\" value=\" "+ rs.getString("class") +" \"  type=\"hidden\">");
				 out.println("<input name=\"price\" value=\" "+ rs.getString("price") +" \"  type=\"hidden\">");
				 out.println("<input name=\"time\" value=\" "+ rs.getString("dept_time") +" \"  type=\"hidden\">");
				 out.println("<input name=\"timearr\" value=\" "+ rs.getString("arr_time") +" \"  type=\"hidden\">");
				 out.println("<input name=\"fno\" value=\" "+ rs.getString("flight_no") +" \"  type=\"hidden\">");

				 
				 out.println("<td>"+"<button type=\"submit\">BOOK</button>"+"</td>");
				 out.println("</form>");
				 out.println("</tr>");
			
			}while (rs.next());
			}
			else{
				out.println("<br><br><br><h3 align=\"center\">No flights Available</h3>");
			}
		

			
		} catch (SQLException ex) {
			System.out.println(ex.getMessage());
		}
	%>
	
</body>
</html>