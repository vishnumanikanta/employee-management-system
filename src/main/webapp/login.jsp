<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
            <%@ include file="css.jsp"%>
            <%@ include file="bootstrap.jsp"%>
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container d-flex justify-content-center align-items-center vh-100">
        <div class="card shadow p-4" style="width: 22rem;">
            <h2 class="text-center mb-4">Login</h2>
            <form action="login"  method="POST" >
              
                <div class="form-group">
                    <label for="email">Enter your email</label>
                    <input type="email" id="email" name="email" class="form-control" placeholder="Email" required>
                </div>
                
              
                <div class="form-group">
                    <label for="password">Enter your password</label>
                    <input type="password" id="password" name="password" class="form-control" placeholder="Password" required>
                </div>
              
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <div class="form-check">
                        <input type="checkbox" class="form-check-input" id="remember">
                        <label class="form-check-label" for="remember">Remember me</label>
                    </div>
                    <a href="#" class="text-primary">Forgot password?</a>
                </div>
                
    
                <button type="submit" class="btn btn-primary btn-block">Log In</button>
                
                <!-- Register Link -->
                <div class="text-center mt-3">
                    <p>Don't have an account? <a href="register.jsp" class="text-primary">Register</a></p>
                </div>
            </form>
        </div>
    </div>
    
</body>
</html>