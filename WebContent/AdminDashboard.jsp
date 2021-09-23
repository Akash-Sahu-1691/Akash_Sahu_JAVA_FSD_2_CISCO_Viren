<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  session="true" autoFlush="true"
	import="java.util.* , java.sql.*"%>
<%@page import="com.phase2.project.Login"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>FlyAway Airline</title>
	<style>
      table {
        border-collapse: collapse;
      }
      td,
      th {
        padding: 10px;
        
        text-align: center;
      }
    </style>
</head>
<body style="backdrop-filter: blur(10px); background-image: url('https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/View_from_the_airplane_window.jpg/1280px-View_from_the_airplane_window.jpg');"><h1 style="text-align: center; color: Blue; font-size: 36px;">FlyAway</h1><br>
<%
    if (Login.isLoggedIn){
%>
<h3 align="center"><b>Admin Dashboard</b></h3>
<p align="center"><span><strong>You are LoggedIn as : <%=Login.email%>. Your Password is : <%=Login.password%></strong></span></p><br>
<br>
<center>
<table >
<tr><td>
<form method="post" action="ChangePassword.jsp">
<input type="submit" value="Change Password">
</form>
</td><td>
<form method="post" action="AddFlight.jsp">
<input type="submit" value="Add New Flight">
</form>
</td><td>
<form method="post" action="RemoveFlight.jsp">
<input type="submit" value="Remove Flight">
</form>
</td><td>
<form method="post" action="AdminLoginPage.jsp">
<input type="submit" value="Logout">
</form>
</td></tr>
</table>
</center>
<br><br>
<h3 align="center"><span><strong> Flight Table </strong></span></h3>
<center>
<table style="border: 2px solid #212F3D; color:#ECF0F1;">
<tr>
<th>Airline Name</th>
<th>Flight Number</th>
<th>From</th>
<th>To</th>
<th>Departure Time</th>
<th>Arrival Time</th>
<th>Available Seats</th>
<th>Date of Travel</th>
<th>Class</th>
<th>Price</th>
</tr>
<%

try		
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "root");
	Statement st=conn.createStatement();
	ResultSet rs;

	rs=st.executeQuery("select * from flight_details");
	while (rs.next()) {
%>
	<tr>
    <td><%=rs.getString("airline_name") %></td>
    <td><%=rs.getString("flight_no") %></td>
    <td><%=rs.getString("src_city") %></td>
    <td><%=rs.getString("des_city") %></td>
    <td><%=rs.getString("dept_time") %></td>
    <td><%=rs.getString("arr_time") %></td>

    <td><%=rs.getString("seat_avail") %></td>
    <td><%=rs.getString("date_of_travel") %></td>
    <td><%=rs.getString("class") %></td>
    <td><%=rs.getString("price") %></td>
    </tr>
<%	  
	}
}
	catch(Exception e)
{
	System.out.print(e);
	e.printStackTrace();
}
	}
    else {
    	out.print("You must Login first");
	}
%>
</table>
</center>
</body>
</html>