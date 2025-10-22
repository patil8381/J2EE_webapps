
<%@ taglib uri='/WEB-INF/university.tld' prefix='univ' %>

<univ:IfInvalidUser>
<jsp:forward page='/LoginForm.jsp' />
</univ:IfInvalidUser >

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Verification Page</title>
</head>
<style>
    body {
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
  background-color: #f4f7f8;
  margin: 0;
  padding: 0;
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
}

.container {
  background-color: #ffffff;
  padding: 40px 30px;
  border-radius: 12px;
  box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
  max-width: 400px;
  width: 100%;
}

h2 {
  margin-bottom: 10px;
  color: #333;
  font-size: 24px;
  text-align: center;
}

.subheading {
  text-align: center;
  margin-bottom: 30px;
  color: #666;
  font-size: 16px;
}

form {
  display: flex;
  flex-direction: column;
}

label {
  margin-bottom: 6px;
  font-weight: bold;
  color: #444;
}

input[type="text"] {
  padding: 10px;
  margin-bottom: 20px;
  border: 1px solid #ccc;
  border-radius: 6px;
  font-size: 14px;
}

button {
  padding: 12px;
  background-color: #007BFF;
  color: white;
  border: none;
  font-size: 16px;
  border-radius: 6px;
  cursor: pointer;
  transition: background-color 0.3s ease;
}

button:hover {
  background-color: #0056b3;
}

</style>
<body>
  <div class="container">
    <h2>Welcome to Verification Page</h2>
    <p class="subheading">${userBean.firstName} ${userBean.lastName}</p>

    <form id='verify' action='/test/VerifyCommunicationChannels.jsp' method='post'>

    <univ:IfEmailIdNotVerified>
        <label for="emailCode">Email ID Code</label>
        <input type='text' id='emailIdCode' name='emailIdCode' placeholder="Enter email verification code">
    </univ:IfEmailIdNotVerified>

    <univ:IfMobileNumberNotVerified>
        <label for="mobileCode">Mobile Number Code</label>
        <input type='text' id='mobileNumberCode' name='mobileNumberCode' placeholder="Enter mobile verification code">
    </univ:IfMobileNumberNotVerified>

    
      <button type="submit">Verify</button>
    </form>

<br>

    <form id="logout" action="/test/logout.jsp" method="post">
    <button type="submit">Logout</button>
   </form>

  </div>
  
</body>
</html>
