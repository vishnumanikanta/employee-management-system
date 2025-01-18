<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="bootstrap.jsp"%>
     
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee Management System</title>
    <style>
        body {
            background-image: url('background.jpg'); /* Replace with your image path */
            background-size: cover;
            background-attachment: fixed;
            background-position: center;
            color: #fff;
            font-family: 'Poppins', sans-serif;
        }
        .navbar {
            background-color: rgba(0, 0, 0, 0.8) !important;
        }
        .nav-link {
            color: #fff !important;
            font-weight: bold;
        }
        .hero {
            text-align: center;
            padding: 150px 20px;
            background: rgba(0, 0, 0, 0.5);
            border-radius: 8px;
            margin-top: 50px;
        }
        .hero h1 {
            font-size: 50px;
            margin-bottom: 20px;
        }
        .hero p {
            font-size: 18px;
        }
        .card {
            background: rgba(255, 255, 255, 0.9);
            border: none;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
        }
        .card:hover {
            transform: translateY(-10px);
            transition: all 0.3s ease;
        }
        .card-title {
            color: #4070f4;
        }
        .btn-primary {
            background-color: #4070f4;
            border-color: #4070f4;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">
            <img src="logo.png" alt="Logo" width="30" height="30" class="d-inline-block align-text-top"> EMS
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarContent" aria-controls="navbarContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarContent">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link" href="#">Dashboard</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Employees</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Reports</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Settings</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div class="container">
    <div class="hero">
        <h1>Welcome to Employee Management System</h1>
        <p>Manage employee records efficiently with our system. Create, Read, Update, and Delete employee details seamlessly.</p>
    </div>

    <div class="row mt-5">
        <div class="col-md-3">
            <div class="card text-center">
                <div class="card-body">
                    <h5 class="card-title">Create Employee</h5>
                    <p class="card-text">Add new employee details to the system.</p>
                    <a href="addemployee.jsp" class="btn btn-primary">Create</a>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card text-center">
                <div class="card-body">
                    <h5 class="card-title">View Employees</h5>
                    <p class="card-text">View the list of all employees.</p>
                    <a href="welcome.jsp" class="btn btn-primary">View</a>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card text-center">
                <div class="card-body">
                    <h5 class="card-title">Update Employee</h5>
                    <p class="card-text">Edit employee details as needed.</p>
                    <a href="updateEmployee.jsp" class="btn btn-primary">Update</a>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card text-center">
                <div class="card-body">
                    <h5 class="card-title">Delete Employee</h5>
                    <p class="card-text">Remove employee records from the system.</p>
                    <a href="delete.jsp" class="btn btn-primary">Delete</a>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>