package com.phase2.project;

import java.util.Random;
import java.util.stream.Collectors;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;


@SuppressWarnings("serial")
@WebServlet("/Store")
public class Store extends HttpServlet {
	
	public static String name;
	public static String address;
	public static String age;
	public static String mobile;
	public static String email;
	public static String choose;
	public static String identity;
	
	public static String airline_name;
	public static String fno;
	public static String date;
	public static String src;
	public static String dest;
	public static String seats;
	public static String flight_class;
	public static String price;
	public static String time;
	public static String timearr;
	public static Integer total;
	public static Integer price1;
	public static Integer no_of_passenger;
	
	public static Integer length;
	public static String chars;
	public static String booking_id;

    @Override
    public void doPost (HttpServletRequest req, HttpServletResponse resp) throws IOException {
        

         name = req.getParameter("name");
         address = req.getParameter("address");
         age = req.getParameter("age");
         mobile = req.getParameter("mobile");
         email = req.getParameter("email");
         choose = req.getParameter("choose");
         identity = req.getParameter("identity");
        
         airline_name = req.getParameter("airline_name");
         date = req.getParameter("date");
         src = req.getParameter("src");
         dest = req.getParameter("dest");
         seats = req.getParameter("seats");
         flight_class = req.getParameter("class");
        // price = req.getParameter("price");
         time = req.getParameter("time");
         
         
          length = 6;
         chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
         + "0123456789";
         booking_id = "DFX23TY";
         
        //resp.sendRedirect("Review_Page.jsp");
      
    }
}