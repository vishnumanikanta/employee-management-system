package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbconnections.employeedbconnection;
import services.employeeservice;
@WebServlet("/delete")
public class deleteemployee extends HttpServlet{
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	String rollno=req.getParameter("rollnumber");
	employeeservice service=new employeeservice(employeedbconnection.getconnection());
	boolean f=service.delete(rollno);
	if(f) {
		resp.sendRedirect("");
	}
	else {
		resp.sendRedirect("");
	}
}
}