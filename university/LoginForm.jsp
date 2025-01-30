<jsp:useBean id='userBean' scope='request' class='com.university.beans.UserBean' />
<jsp:useBean id='errorBean' scope='request' class='com.university.beans.ErrorBean' />
<jsp:useBean id='messageBean' scope='request' class='com.university.beans.MessageBean' />

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

<div> 
<jsp:getProperty name='messageBean' property='message' />
</div>

<form id='loginForm' action='/test/Login.jsp' method='post' onsubmit='return validateLoginForm(this)'>

Email Id <input type='text' id='emailId' name='emailId' value='${userBean.emailId}'><br>
<span class='error' id='mobileNumberError'></span>
password <input type='password' id='password' name='password' ><br>

<button type='submit'>Login</button>
</form>

</br>

<form id='signUpForm' action='/test/SignUpForm.jsp' method='post'>
<button href='' >Register</button>
</form>


</body>
</html>