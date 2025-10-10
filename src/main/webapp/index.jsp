<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Welcome to SimpleWebApp</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #6dd5fa 0%, #2980b9 100%);
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .card {
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.4);
            text-align: center;
            background-color: white;
            animation: fadeIn 1s ease-out;
            max-width: 450px;
            width: 90%;
        }
        h2 {
            font-weight: 700;
            color: #2980b9;
        }
        .btn {
            margin: 10px 15px;
            border-radius: 50px;
            padding: 10px 40px;
            font-weight: 600;
            transition: all 0.3s ease;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        .btn:hover {
            transform: translateY(-3px) scale(1.02);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
        }
        .btn-primary {
             background-color: #2980b9;
             border-color: #2980b9;
        }
        .btn-secondary {
             background-color: #6c757d;
             border-color: #6c757d;
        }
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }
        /* NEW FOOTER STYLE */
        .version-footer {
            position: fixed;
            bottom: 0;
            left: 0;
            width: 100%;
            padding: 5px;
            background-color: rgba(0, 0, 0, 0.6); 
            color: white;
            text-align: center;
            font-size: 0.75rem;
            z-index: 1000;
        }
    </style>
</head>
<body>
    <div class="card">
        <h2 class="mb-4">Welcome to SimpleWebApp</h2>
        
        <% 
            // Check if the 'user' array is in the session
            if (session.getAttribute("user") != null) {
        %>
            <p class="lead text-success">You are currently logged in!</p>
            <a href="user_details.jsp" class="btn btn-success mt-3">View Your Profile</a>
        <% 
            } else {
        %>
            <p class="lead mb-4 text-muted">Please choose an option to continue.</p>
            <div class="d-flex justify-content-center flex-wrap">
                <a href="signup.jsp" class="btn btn-primary">Sign Up</a>
                <a href="login.jsp" class="btn btn-secondary">Login</a>
            </div>
        <% 
            }
        %>
        
    </div>
    
    <footer class="version-footer">
        Application Version: <%= application.getInitParameter("app.version") %>
    </footer>
</body>
</html>