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
@WebServlet("/register")
public class employeeservlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String rollno=req.getParameter("rollnumber");
		String empname=req.getParameter("employeename");
		String email=req.getParameter("email");
		
		String password=req.getParameter("password");
		employee emp=new employee(rollno,empname,email,password, 0, 0, 0, password);
		employeeservice service=new employeeservice(employeedbconnection.getconnection());
		boolean f=service.register(emp);
		if(f) {
            System.out.println("Employee registered successfully!");

			resp.sendRedirect("login.jsp");
		}
		else {
            System.out.println("Failed to register employee.");

			resp.sendRedirect("");
		}
	}
}