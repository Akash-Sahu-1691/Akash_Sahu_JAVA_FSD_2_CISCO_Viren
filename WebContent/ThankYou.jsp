<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="com.phase2.project.Store"%>

<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
		out.println("<table  align=\"center\">");
		out.println("<tr>");
		out.println("<td>Full Name </td>");
		out.println("<td>:</td>");
		//out.println("<td>" + request.getParameter("name") + "</td>");
		out.println("<td>" + Store.name + "</td>");
		out.println("</tr>");

		out.println("<tr>");
		out.println("<td>Address </td>");
		out.println("<td>:</td>");
		//out.println("<td>" + request.getParameter("address") + "</td>");
		out.println("<td>" + Store.address + "</td>");
		out.println("</tr>");

		out.println("<tr>");
		out.println("<td>Age </td>");
		out.println("<td>:</td>");
		//out.println("<td>" + request.getParameter("age") + "</td>");
		out.println("<td>" + Store.age + "</td>");
		out.println("</tr>");

		out.println("<tr>");
		out.println("<td>Mobile no. </td>");
		out.println("<td>:</td>");
		//out.println("<td>" + request.getParameter("mobile") + "</td>");
		out.println("<td>" + Store.mobile + "</td>");
		out.println("</tr>");

		out.println("<tr>");
		out.println("<td>Email </td>");
		out.println("<td>:</td>");
		out.println("<td>" + request.getParameter("email") + "</td>");
		out.println("<td>" + Store.email + "</td>");
		out.println("</tr>");

		out.println("</table>");

		out.println("<br><h3>Flight Details</h3>");

		out.println("<table align=\"center\">");

		out.println("<tr>");
		out.println("<td>Airline Name </td>");
		out.println("<td>:</td>");
		out.println("<td>" + request.getParameter("airline_name") + "</td>");
		out.println("</tr>");

		out.println("<tr>");
		out.println("<td>Source </td>");
		out.println("<td>:</td>");
		out.println("<td>" + request.getParameter("src") + "</td>");
		out.println("</tr>");

		out.println("<tr>");
		out.println("<td>Destination </td>");
		out.println("<td>:</td>");
		out.println("<td>" + request.getParameter("dest") + "</td>");
		out.println("</tr>");

		out.println("<tr>");
		out.println("<td>Travel date </td>");
		out.println("<td>:</td>");
		out.println("<td>" + request.getParameter("date") + "</td>");
		out.println("</tr>");

		out.println("<tr>");
		out.println("<td>Time of dept. </td>");
		out.println("<td>:</td>");
		out.println("<td>" + request.getParameter("time") + "</td>");
		out.println("</tr>");

		out.println("<tr>");
		out.println("<td>Class</td>");
		out.println("<td>:</td>");
		out.println("<td>" + request.getParameter("class") + "</td>");
		out.println("</tr>");

		out.println("</table>");
	%>

</body>
</html>