<%@page import="models.employee"%>
<%@page import="java.util.List"%>
<%@page import="dbconnections.employeedbconnection"%>
<%@page import="services.employeeservice"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="bootstrap.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee List</title>
<!-- Bootstrap CSS -->
</head>
<body>

    <div class="container mt-4">
        <table class="table table-bordered table-striped">
            <thead class="thead-dark">
                <tr>
                    <th>Roll Number</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Address</th>
                    <th>Pincode</th>
                    <th>Mobile Number</th>
                    <th>Gender</th>
                    <th>Password</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <%
                    employeeservice service = new employeeservice(employeedbconnection.getconnection());
                    List<employee> li = service.getAllEmployees();
                    for(employee s : li){
                %>
                <tr>
                    <td><%= s.getRollnumber() %></td>
                    <td><%= s.getEmployeename() %></td>
                    <td><%= s.getEmail() %></td>
                    <td><%= s.getAddress() %></td>
                    <td><%= s.getPincode() %></td>
                    <td><%= s.getMobilenumber() %></td>
                    <td><%= s.getGender() %></td>
                    <td><%= s.getPassword() %></td>
                    <td>
<a href="edit.jsp?rollnumber=<%= s.getRollnumber() %>" class="btn btn-primary btn-sm">Edit</a>
                        <a href="delete?rollnumber=<%= s.getRollnumber() %>" class="btn btn-danger btn-sm">Delete</a>
                    </td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
    </div>

</body>
</html>
