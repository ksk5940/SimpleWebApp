<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>Welcome</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
  <style>
    body {
      font-family: 'Poppins', sans-serif;
      background: linear-gradient(to right, #a1c4fd, #c2e9fb);
      height: 100vh;
      display: flex;
      align-items: center;
      justify-content: center;
    }
    .card {
      width: 400px;
      padding: 30px;
      border-radius: 15px;
      box-shadow: 0 8px 16px rgba(0,0,0,0.2);
      text-align: center;
    }
    .btn-secondary {
      border-radius: 10px;
    }
  </style>
</head>
<body>
  <div class="card">
    <h3>Welcome, <%= request.getAttribute("name") %>!</h3>
    <p>Email: <%= request.getAttribute("email") %></p>
    <a href="index.jsp" class="btn btn-secondary mt-3">← Back to Home</a>
  </div>
</body>
</html>