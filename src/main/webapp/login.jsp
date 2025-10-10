<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(to right, #ff9a9e, #fad0c4); /* Soft pink/coral gradient */
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .card {
            width: 400px;
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 10px 20px rgba(0,0,0,0.3);
            background-color: white;
            animation: slideIn 0.8s ease-out;
        }
        .form-control {
            border-radius: 10px;
        }
        .btn-success {
            border-radius: 10px;
            font-weight: 600;
        }
        @keyframes slideIn {
            from { opacity: 0; transform: translateX(50px); }
            to { opacity: 1; transform: translateX(0); }
        }
    </style>
</head>
<body>
    <div class="card">
        <h3 class="text-center text-success mb-4">Account Login</h3>
        
        <form action="login" method="post">
            <div class="mb-3">
                <label class="form-label">Email</label>
                <input type="email" name="email" class="form-control" placeholder="Email Address" required>
            </div>
            <div class="mb-4">
                <label class="form-label">Password</label>
                <input type="password" name="password" class="form-control" placeholder="Password" required>
            </div>
            <button type="submit" class="btn btn-success w-100">Login</button>
        </form>
 
        <% if ("true".equals(request.getParameter("error"))) { %>
            <div class="alert alert-danger mt-3">Invalid email or password. Please try again.</div>
        <% } %>
        
        <div class="text-center mt-3">
            <a href="index.jsp" class="text-decoration-none text-muted">← Back to Main Menu</a>
        </div>
    </div>
</body>
</html>