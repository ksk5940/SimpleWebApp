<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>Login</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
  <style>
    body {
      font-family: 'Poppins', sans-serif;
      background: linear-gradient(to right, #ff9a9e, #fad0c4);
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
    }
    .form-control {
      border-radius: 10px;
    }
    .btn-success {
      border-radius: 10px;
    }
  </style>
</head>
<body>
  <div class="card">
    <h3 class="text-center mb-4">Login</h3>
    <form action="login" method="post">
      <div class="mb-3">
        <label class="form-label">Email</label>
        <input type="email" name="email" class="form-control" required>
      </div>
      <div class="mb-3">
        <label class="form-label">Password</label>
        <input type="password" name="password" class="form-control" required>
      </div>
      <button type="submit" class="btn btn-success w-100">Login</button>
    </form>
    <% if ("true".equals(request.getParameter("error"))) { %>
      <div class="alert alert-danger mt-3">Invalid credentials</div>
    <% } %>
    <div class="text-center mt-3">
      <a href="index.jsp" class="text-decoration-none text-dark">← Back to Home</a>
    </div>
  </div>
</body>
</html>