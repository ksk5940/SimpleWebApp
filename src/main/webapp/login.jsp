<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            /* Simple, elegant light background */
            background: #f8f9fa;
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .card {
            width: 450px;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.15);
            background-color: white;
            /* Modern, colorful border effect */
            border: 1px solid transparent;
            background-image: linear-gradient(white, white), 
                              linear-gradient(to right, #ee7752, #e73c7e, #23a6d5, #23d5ab);
            background-origin: border-box;
            background-clip: padding-box, border-box;
            animation: slideIn 0.8s ease-out;
        }
        h3 {
            font-weight: 700;
            color: #ee7752;
        }
        .form-control {
            border-radius: 8px;
            transition: border-color 0.3s;
        }
        .form-control:focus {
            border-color: #23a6d5;
            box-shadow: 0 0 0 0.25rem rgba(35, 166, 213, 0.25);
        }
        .btn-success {
            border-radius: 50px;
            font-weight: 600;
            background-color: #23a6d5;
            border-color: #23a6d5;
            transition: transform 0.2s;
        }
        .btn-success:hover {
            transform: translateY(-2px);
            background-color: #23d5ab;
            border-color: #23d5ab;
        }
        @keyframes slideIn {
            from { opacity: 0; transform: translateY(30px); }
            to { opacity: 1; transform: translateY(0); }
        }
    </style>
</head>
<body>
    <div class="card">
        <h3 class="text-center mb-4">Account Login</h3>
        
        <form action="login" method="post">
            <div class="mb-3">
                <label class="form-label">Email Address</label>
                <input type="email" name="email" class="form-control" placeholder="Enter your email" required>
            </div>
            <div class="mb-4">
                <label class="form-label">Password</label>
                <input type="password" name="password" class="form-control" placeholder="Enter your password" required>
            </div>
            <button type="submit" class="btn btn-success w-100">Login</button>
        </form>
 
        <% if ("true".equals(request.getParameter("error"))) { %>
            <div class="alert alert-danger mt-3">Invalid email or password. Please try again.</div>
        <% } %>
        
        <div class="text-center mt-4">
            <a href="signup.jsp" class="text-decoration-none text-muted">Don't have an account? Sign up.</a>
            <br>
            <a href="index.jsp" class="text-decoration-none text-muted mt-2 d-block">← Main Menu</a>
        </div>
    </div>
</body>
</html>