
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



@WebServlet("/updateEmployee")
public class updateservelet extends HttpServlet {

  

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve form data
        String rollnumber = request.getParameter("rollnumber");
        String employeename = request.getParameter("employeename");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        int pincode = Integer.parseInt(request.getParameter("pincode"));
        long mobilenumber = Long.parseLong(request.getParameter("mobilenumber"));
        int gender = Integer.parseInt(request.getParameter("gender"));

        // Create and populate employee object
        employee emp = new employee();
        emp.setRollnumber(rollnumber);
        emp.setEmployeename(employeename);
        emp.setEmail(email);
        emp.setAddress(address);
        emp.setPincode(pincode);
        emp.setMobilenumber(mobilenumber);
        emp.setGender(gender);

        // Update employee details
        employeeservice service = new employeeservice(employeedbconnection.getconnection());
        boolean updated = service.update(emp);

        if (updated) {
            response.sendRedirect("home.jsp"); 
        } else {
            response.getWriter().println("Error updating employee details.");
        }
    }
}
