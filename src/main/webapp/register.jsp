<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="css.jsp"%>
    <%@ include file="bootstrap.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <title>Register Employee</title>
    <!-- Add Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-5">
        <h1 class="text-center mb-4">Register Employee</h1>
        <form action="register" method="POST" class="p-4 border rounded shadow bg-light">
            <!-- Roll Number -->
            <div class="form-group">
                <label for="rollnumber">Roll Number</label>
                <input type="text" id="rollnumber" name="rollnumber" class="form-control" placeholder="Enter roll number" required>
            </div>

            <!-- Employee Name -->
            <div class="form-group">
                <label for="employeename">Employee Name</label>
                <input type="text" id="employeename" name="employeename" class="form-control" placeholder="Enter name" required>
            </div>

            <!-- Email -->
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" class="form-control" placeholder="Enter email" required>
            </div>

            
            <!-- Password -->
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" class="form-control" placeholder="Enter password" required>
            </div>

            <!-- Submit Button -->
            <div class="text-center">
                <button type="submit" class="btn btn-primary">Register</button>
            </div>
        </form>
    </div>

</body>
</html>
