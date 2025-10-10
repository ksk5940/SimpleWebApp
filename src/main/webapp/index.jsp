<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Welcome to SimpleWebApp</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(to right, #ffecd2, #fcb69f); /* Warm gradient */
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .card {
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 10px 20px rgba(0,0,0,0.3);
            text-align: center;
            background-color: white; /* Card background */
            animation: fadeIn 1s ease-out;
        }
        .btn {
            margin: 10px;
            border-radius: 10px;
            padding: 10px 30px;
            font-weight: 600;
            transition: transform 0.2s;
        }
        .btn:hover {
            transform: translateY(-2px);
        }
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }
    </style>
</head>
<body>
    <div class="card">
        <h2 class="text-primary mb-4">Welcome to SimpleWebApp</h2>
        
        <% 
            // Check if the 'user' object is in the session (assuming your LoginServlet sets this)
            if (session.getAttribute("user") != null) {
        %>
            <p class="lead">You are logged in!</p>
            <a href="user_details.jsp" class="btn btn-success mt-3">View Your Profile</a>
        <% 
            } else {
        %>
            <p class="lead mb-4">Please log in or sign up to continue.</p>
            <div class="d-flex justify-content-center">
                <a href="signup.jsp" class="btn btn-primary">Sign Up</a>
                <a href="login.jsp" class="btn btn-secondary">Login</a>
            </div>
        <% 
            }
        %>
        
    </div>
</body>
</html>