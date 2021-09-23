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

	<%
		out.println("<br><h1 align='center'>Secure Payment gateway</h1><br>");
	%>

	<%
	
	Store.no_of_passenger=Integer.valueOf(request.getParameter("count").trim());
	Store.price1=Integer.valueOf(request.getParameter("cost").trim());
	
	Store.total=Integer.valueOf(request.getParameter("cost").trim())* Integer.valueOf(request.getParameter("count").trim()) ;
		out.println("<h2 align='center'>Total Fare is : " + Store.total + "</h2> ");
	%>

	<form action="ThankYou1.jsp" method="post" style="margin: -20px 500px">
		<table>

			<tr>
				<td>Card Number</td>
				<td>:</td>
				<td><input type="number" style="width: 150px" maxlength="16"
					min="1000000000000000" max="9999999999999999"
					oninvalid="alert('enter 16 digits for CardNumber')" required></td>
			</tr>

			<br>

			<tr>
				<td>CVV</td>
				<td>:</td>
				<td><input type="number" style="width: 150px" min="100"
					max="999" maxlength="3" oninvalid="alert('enter 3 digits for CVV')"
					required></td>
			</tr>

			<br>

			<tr>
				<td>PIN</td>
				<td>:</td>
				<td><input type="number" maxlength="4" style="width: 150px"
					min="1000" max="9999"
					oninvalid="alert('enter 4 digits for PinNumber')" required>
				</td>
			</tr>

			<br>



		</table>

		<button style="margin: 30px 120px" type="submit">Submit</button>
	</form>
	<%--<input type="number" style="width:150px" min="3" max="3" required>
 <input type="number" style="width:150px" min="16" max="16" required> 
 <input type="number" style="width:150px" min="4" max="4" required>--%>
</body>
</html>