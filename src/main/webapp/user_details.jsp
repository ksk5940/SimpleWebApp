<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% 
    // 1. Check for logged-in user
    Object userObj = session.getAttribute("user");
    if (userObj == null) {
        // If not logged in, send them away
        response.sendRedirect("login.jsp?error=notloggedin");
        return;
    }
    
    // 2. Cast the session object to a String array (String[])
    //    We use String[] because LoginServlet stores {name, email} this way.
    String[] userArray = (String[]) userObj; 
    
    // 3. Extract the details: Index 0 is Name, Index 1 is Email
    String name = userArray[0]; 
    String email = userArray[1]; 
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
        .btn-secondary {
            border-radius: 10px;
        }
        @keyframes scaleIn {
            from { opacity: 0; transform: scale(0.9); }
            to { opacity: 1; transform: scale(1); }
        }
    </style>
</head>
<body>
    <div class="card">
        <h2 class="text-primary mb-4">Welcome, <%= name %>!</h2>
        
        <div class="detail-row">
            <strong>Name:</strong> <%= name %>
        </div>
        <div class="detail-row">
            <strong>Email:</strong> <%= email %>
        </div>
        
        <hr class="mt-4">
        
        <a href="logout" class="btn btn-danger w-100 mb-3">Logout</a>
        
        <a href="index.jsp" class="btn btn-secondary mt-3">← Back to Main Menu</a>
    </div>
</body>
</html>