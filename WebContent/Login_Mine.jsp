<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true" autoFlush="true"
	import="java.util.* , java.sql.*"%>
    <%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
	
      boolean isLoggedIn = false;
      String password = "admin";
      String email = "admin@flyaway.com";


        String email_user = request.getParameter("adminName");
        String pass_user = request.getParameter("adminPassword");

        if (email_user.equals(email) && pass_user.equals(password)){
            isLoggedIn = true;
            out.println("You have LoggedIn");
            response.sendRedirect("AdminDashboard.jsp");
        }
        else {
            isLoggedIn = false;
            out.println("Login Failed : Incorrect email or Password");
        }
      
    

%>

</body>
</html>