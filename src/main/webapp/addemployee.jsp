<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="bootstrap.jsp"%>
<%@ include file="css.jsp"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Add Employee</title>
</head>
<body>
	<div class="container mt-5">
		<h1 class="text-center text-primary mb-4">Add Employee</h1>
		<div class="row justify-content-center">
			<div class="col-md-8">
				<form action="addemployee" method="POST"
					class="p-4 border rounded shadow bg-light">
					<!-- Employee ID -->
					<div class="form-group">
						<label for="rollnumber">Employee ID</label> <input type="text"
							id="rollnumber" name="rollnumber" class="form-control"
							placeholder="Enter employee ID" required>
					</div>
					<!-- Employee Name -->
					<div class="form-group">
						<label for="employeename">Employee Name</label> <input type="text"
							id="employeename" name="employeename" class="form-control"
							placeholder="Enter employee name" required>
					</div>

					<!-- Email -->
					<div class="form-group">
						<label for="email">Email</label> <input type="email" id="email"
							name="email" class="form-control"
							placeholder="Enter employee email" required>
					</div>

					<!-- Phone Number -->
					<div class="form-group">
						<label for="phonenumber">Phone Number</label> <input type="text"
							id="phonenumber" name="phonenumber" class="form-control"
							placeholder="Enter phone number" required>
					</div>

					<!-- Address -->
					<div class="form-group">
						<label for="address">Address</label>
						<textarea id="address" name="address" class="form-control"
							placeholder="Enter address" rows="3" required></textarea>
					</div>
					<div class="form-group">
						<label for="pincode">pincode</label> <input type="text"
							id="pincode" name="pincode" class="form-control"
							placeholder="Enter pincode" required>

					</div>


					<div class="form-group">
						<label for="gender">Gender</label> <select id="gender"
							name="gender" class="form-control" required>
							<option value="" disabled selected>-- Select Gender --</option>
							<option value="0">Male</option>
							<option value="1">Female</option>
							<option value="2">Other</option>
						</select>
					</div>

					<!-- Password -->
					<div class="form-group">
						<label for="password">Password</label> <input type="password"
							id="password" name="password" class="form-control"
							placeholder="Enter password" required>
					</div>

					<!-- Submit Button -->
					<div class="text-center">
						<button type="submit" class="btn btn-primary btn-block">Add
							Employee</button>
					</div>
				</form>
			</div>
		</div>
	</div>

</body>
</html>