<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.example.model.User" %> <%-- **IMPORTANT: Replace with your actual User class import** --%>
<% 
    // 1. Check for logged-in user
    Object userObj = session.getAttribute("user");
    if (userObj == null) {
        // If not logged in, redirect to login page
        response.sendRedirect("login.jsp?error=notloggedin");
        return;
    }
    
    // 2. Cast the session object to your User class
    // ASSUMPTION: Your LoginServlet successfully put a User object into the session.
    User user = (User) userObj; 
%>
<html>
<head>
    <title>User Profile</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(to right, #a1c4fd, #c2e9fb); /* Refreshing blue gradient */
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .card {
            width: 450px;
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.4);
            background-color: white;
            text-align: center;
            animation: scaleIn 0.5s ease-out;
        }
        .detail-row {
            padding: 10px 0;
            border-bottom: 1px solid #eee;
            text-align: left;
        }
        .detail-row strong {
            display: inline-block;
            width: 100px;
        }
        .btn-danger {
            border-radius: 10px;
            font-weight: 600;
        }
        @keyframes scaleIn {
            from { opacity: 0; transform: scale(0.9); }
            to { opacity: 1; transform: scale(1); }
        }
    </style>
</head>
<body>
    <div class="card">
        <h2 class="text-primary mb-4">Welcome, <%= user.getName() %>!</h2>
        
        <div class="detail-row">
            <strong>Name:</strong> <%= user.getName() %>
        </div>
        <div class="detail-row">
            <strong>Email:</strong> <%= user.getEmail() %>
        </div>
        <div class="detail-row">
            <strong>User ID:</strong> <%= user.getId() %> 
        </div>
        
        <hr class="mt-4">
        
        <a href="logout" class="btn btn-danger w-100 mb-3">Logout</a>
        
        <a href="index.jsp" class="text-decoration-none text-muted">← Back to Main Menu</a>
    </div>
</body>
</html>