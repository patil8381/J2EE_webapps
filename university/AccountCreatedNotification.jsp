<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Notification Page</title>
  <style>
    body {
      margin: 0;
      padding: 0;
      background: #f0f4f8;
      font-family: Arial, sans-serif;
      display: flex;
      align-items: center;
      justify-content: center;
      height: 100vh;
    }

    .notification-container {
      background: white;
      padding: 40px 30px;
      border-radius: 10px;
      box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
      text-align: center;
      max-width: 400px;
      width: 100%;
    }

    .notification-container h2 {
      color: #333;
      margin-bottom: 15px;
    }

    .notification-container p {
      color: #555;
      font-size: 16px;
      margin-bottom: 30px;
    }

    .login-btn {
      background-color: #007bff;
      color: white;
      border: none;
      padding: 12px 25px;
      font-size: 16px;
      border-radius: 5px;
      cursor: pointer;
      transition: background-color 0.3s ease;
      text-decoration: none;
      display: inline-block;
    }

    .login-btn:hover {
      background-color: #0056b3;
    }
  </style>
</head>
<body>

  <div class="notification-container">
    <h2>Thank You for Signing Up!</h2>
    <p>Welcome ${userBean.firstName} ${userBean.lastName}.<br>${messageBean.message}<br>Please log in to continue.</p>
    <a href="/test/LoginForm.jsp" class="login-btn">Login</a>
  </div>

</body>
</html>
