package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbconnections.employeedbconnection;
import services.employeeservice;
@WebServlet("/login")
public class loginemployee extends HttpServlet{
@Override

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	String email=req.getParameter("email");
	String password=req.getParameter("password");
	employeeservice service=new employeeservice(employeedbconnection.getconnection());
	boolean f=service.login(email,password);
	if(f) {
		resp.sendRedirect("home.jsp");
	}
	else {
		resp.sendRedirect("delete.jsp");
	}
}
}
