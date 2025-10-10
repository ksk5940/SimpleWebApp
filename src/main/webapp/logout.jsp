<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // ASSUMPTION: Your LogoutServlet has already been called and invalidated the session.
    // This page is just a placeholder/confirmation, but a direct redirect from the Servlet is better.
    
    // Redirect to the main page after a brief delay (optional)
    response.setHeader("Refresh", "3; url=index.jsp");
%>
<html>
<head>
    <title>Logging Out</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(to right, #ffecd2, #fcb69f); /* Match index.jsp */
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }
    </style>
</head>
<body>
    <div class="card p-5 text-center shadow-lg">
        <h2 class="text-warning">Goodbye!</h2>
        <p class="lead">You have been successfully logged out.</p>
        <p>Redirecting to the main page...</p>
        <a href="index.jsp" class="btn btn-secondary mt-3">Click here if you are not redirected</a>
    </div>
</body>
</html>