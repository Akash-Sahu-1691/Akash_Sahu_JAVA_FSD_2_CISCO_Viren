<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	<%@page import="com.phase2.project.Store"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body align="center" style="backdrop-filter: blur(2px); background-image: url('https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/View_from_the_airplane_window.jpg/1280px-View_from_the_airplane_window.jpg');">
<h1 style="text-align: center; color: Blue; font-size: 36px;">FlyAway</h1>

	<%
	
	Store.name=request.getParameter("name");
	Store.address=request.getParameter("address");
	Store.age=request.getParameter("age");
	Store.mobile=request.getParameter("mobile");
	Store.email=request.getParameter("email");
	Store.mobile=request.getParameter("mobile");
	Store.choose=request.getParameter("choose");
	Store.identity=request.getParameter("identity");


		out.println("<h3>Review personal details :</h3> ");

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
		//out.println("<td>" + request.getParameter("email") + "</td>");
		out.println("<td>" + Store.email + "</td>");
		out.println("</tr>");

		out.println("<tr>");
		out.println("<td>Identity-Name </td>");
		out.println("<td>:</td>");
		//out.println("<td>" + request.getParameter("choose") + "</td>");
		out.println("<td>" + Store.choose + "</td>");
		out.println("</tr>");

		out.println("<tr>");
		//out.println("<td>" + request.getParameter("choose") + " no.</td>");
		out.println("<td>" + Store.choose + " no.</td>");
		out.println("<td>:</td>");
		//out.println("<td>" + request.getParameter("identity") + "</td>");
		out.println("<td>" + Store.identity + "</td>");
		out.println("</tr>");

		out.println("</table>");

		out.println("<br><h3>Flight Details</h3>");

		out.println("<table align=\"center\">");

		out.println("<tr>");
		out.println("<td>Airline Name </td>");
		out.println("<td>:</td>");
		out.println("<td>" + Store.airline_name+ "</td>");
		//out.println("<td>" + request.getParameter("airline_name") + "</td>");
		out.println("</tr>");

		out.println("<tr>");
		out.println("<td>Source </td>");
		out.println("<td>:</td>");
		//out.println("<td>" + request.getParameter("src") + "</td>");
		out.println("<td>" + Store.src + "</td>");
		out.println("</tr>");

		out.println("<tr>");
		out.println("<td>Destination </td>");
		out.println("<td>:</td>");
		//out.println("<td>" + request.getParameter("dest") + "</td>");
		out.println("<td>" +Store.dest+ "</td>");
		out.println("</tr>");

		out.println("<tr>");
		out.println("<td>Travel date </td>");
		out.println("<td>:</td>");
		//out.println("<td>" + request.getParameter("date") + "</td>");
		out.println("<td>" + Store.date + "</td>");
		out.println("</tr>");

		out.println("<tr>");
		out.println("<td>Time of dept. </td>");
		out.println("<td>:</td>");
		//out.println("<td>" + request.getParameter("time") + "</td>");
		out.println("<td>" +Store.time + "</td>");
		out.println("</tr>");

		out.println("<tr>");
		out.println("<td>Class</td>");
		out.println("<td>:</td>");
		//out.println("<td>" + Store.flight_class + "</td>");
		out.println("<td>" + Store.flight_class + "</td>");
		out.println("</tr>");

		out.println("</table>");
		out.println("<h4>Price per ticket : " + Store.price + "</h4>");
		
		out.println("<form action='payment.jsp' method='post'>");
		out.println("Number of tickets : <input type='number' name='count' min='1' max='9' maxlength='1' oninvalid=\"alert('Number of tickets allowed (0-9)')\" required>");
		out.println("<input type='hidden' name='cost' value='"+Store.price+"'> ");
		

		
		
		
		
		
		out.println("<td>"+"<button type=\"submit\">Payment</button>"+"</td>");
		out.println("</form>");
	
	
	%>
	
	<%--
			out.println("<form action='ThankYou.jsp' method='post'>");
		
		out.println("<input type='hidden' name='name' value='"+request.getParameter("name")+"'> ");
		out.println("<input type='hidden' name='address' value='"+request.getParameter("address")+"'> ");
		out.println("<input type='hidden' name='age' value='"+request.getParameter("age")+"'> ");
		out.println("<input type='hidden' name='mobile' value='"+request.getParameter("mobile")+"'> ");
		out.println("<input type='hidden' name='email' value='"+request.getParameter("email")+"'> ");
		
		
		out.println("<input type='hidden' name='airline_name' value='"+request.getParameter("airline_name")+"'> ");
		out.println("<input type='hidden' name='src' value='"+request.getParameter("src")+"'> ");
		out.println("<input type='hidden' name='dest' value='"+request.getParameter("dest")+"'> ");
		out.println("<input type='hidden' name='date' value='"+request.getParameter("date")+"'> ");
		out.println("<input type='hidden' name='time' value='"+request.getParameter("time")+"'> ");
		out.println("<input type='hidden' name='class' value='"+request.getParameter("class")+"'> ");
		out.println("<input type='hidden' name='price' value='"+request.getParameter("price")+"'> ");
			out.println("</form>");
	 --%>

</body>
</html>