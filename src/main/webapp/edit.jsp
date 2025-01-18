<%@page import="models.employee"%>
<%@page import="services.employeeservice"%>
<%@page import="dbconnections.employeedbconnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String rollnumber = request.getParameter("rollnumber");
    employeeservice service = new employeeservice(employeedbconnection.getconnection());
    employee emp = service.getByRollNumber(rollnumber);
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Employee</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-4">
        <h2>Edit Employee</h2>
        <form action="updateEmployee" method="post">
            <div class="form-group">
                <label for="rollnumber">Roll Number</label>
                <input type="text" class="form-control" id="rollnumber" name="rollnumber" value="<%= emp.getRollnumber() %>" readonly>
            </div>
            <div class="form-group">
                <label for="employeename">Name</label>
                <input type="text" class="form-control" id="employeename" name="employeename" value="<%= emp.getEmployeename() %>">
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" class="form-control" id="email" name="email" value="<%= emp.getEmail() %>">
            </div>
            <div class="form-group">
                <label for="address">Address</label>
                <input type="text" class="form-control" id="address" name="address" value="<%= emp.getAddress() %>">
            </div>
            <div class="form-group">
                <label for="pincode">Pincode</label>
                <input type="text" class="form-control" id="pincode" name="pincode" value="<%= emp.getPincode() %>">
            </div>
            <div class="form-group">
                <label for="mobilenumber">Mobile Number</label>
                <input type="text" class="form-control" id="mobilenumber" name="mobilenumber" value="<%= emp.getMobilenumber() %>">
            </div>
            <div class="form-group">
                <label for="gender">Gender</label>
                <select class="form-control" id="gender" name="gender">
                    <option value="1" <%= emp.getGender() == 1 ? "selected" : "" %>>Male</option>
                    <option value="2" <%= emp.getGender() == 2 ? "selected" : "" %>>Female</option>
                    <option value="3" <%= emp.getGender() == 3 ? "selected" : "" %>>Other</option>
                </select>
            </div>
            <button type="submit" class="btn btn-primary">Update</button>
        </form>
    </div>
</body>
</html>
