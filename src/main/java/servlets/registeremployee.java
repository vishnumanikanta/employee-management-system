package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbconnections.employeedbconnection;
import models.employee;
import services.employeeservice;
@WebServlet("/addemployee")
public class registeremployee extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String rollno=req.getParameter("rollnumber");
		String empname=req.getParameter("employeename");
		String email=req.getParameter("email");
		String address=req.getParameter("address");
		int pincode=Integer.parseInt(req.getParameter("pincode"));
		long phonenumber=Long.parseLong(req.getParameter("phonenumber"));
		int gender = Integer.parseInt(req.getParameter("gender"));
		String password=req.getParameter("password");
		employee emp=new employee(rollno,empname,email,address,pincode,phonenumber,gender,password);
		employeeservice service=new employeeservice(employeedbconnection.getconnection());
		boolean f=service.addemployee(emp);
		if(f) {
            System.out.println("Employee registered successfully!");

			resp.sendRedirect("home.jsp");
		}
		else {
            System.out.println("Failed to register employee.");

			resp.sendRedirect("");
		}
	}
}