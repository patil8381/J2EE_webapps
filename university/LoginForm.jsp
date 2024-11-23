<jsp:useBean id='userBean' scope='request' class='com.university.beans.UserBean' />
<jsp:useBean id='errorBean' scope='request' class='com.university.beans.ErrorBean' />

<!DOCTYPE HTML>
<html>
<head>
<script src='/university/assets/js/LoginForm.js?asdf=1'></script>
<link rel='stylesheet' type='text/css' href='/university/assets/css/styles.css?sdf=3' />
</head>
<body>
<h2>Login</h2>
<div class='formError'> 
<jsp:getProperty name='errorBean' property='error' />
</div>
<form id='loginForm' action='/university/Login.jsp' method='post' onsubmit='return validateLoginForm(this)'>

Mobile Number<input type='text' id='mobileNumber' name='mobileNumber' value='${userBean.mobileNumber}'><br>
<span class='error' id='mobileNumberError'></span>
password <input type='password' id='password' name='password' value='${userBean.password}'><br>

<button type='submit'>Login</button>
</form>
</body>
</html>