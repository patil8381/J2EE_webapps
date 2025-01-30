<jsp:useBean id='userBean' scope='request' class='com.university.beans.UserBean' />
<jsp:useBean id='errorBean' scope='request' class='com.university.beans.ErrorBean' />

<!DOCTYPE HTML>
<html>
<head>
<script src='/test/assets/js/SignUpForm.js?asdf=6'></script>
<link rel='stylesheet' type='text/css' href='/test/assets/css/styles.css?sdf=3' />
</head>
<body>
<h2>Create Account </h2>
<div class='formError'> 
<jsp:getProperty name='errorBean' property='error' />
</div>
<form id='signUpForm' action='/test/SignUp.jsp' method='post' onsubmit='return validateForm(this)'>

First Name <input type='text' id='firstName' name='firstName' value='${userBean.firstName}'>
<br>
<span class='error' id='firstNameError'></span>

Last Name <input type='text' id='lastName' name='lastName' value='${userBean.lastName}'>
<br>
<span class='error' id='lastNameError'></span>

Email Id <input type='text' id='emailId' name='emailId' value='${userBean.emailId}'>
<br>
<span class='error' id='emailIdError'></span>

Mobile Number<input type='text' id='mobileNumber' name='mobileNumber' value='${userBean.mobileNumber}'>
<br>
<span class='error' id='mobileNumberError'></span>

password <input type='password' id='password' name='password'>
<br>
<span class='error' id='passwordError'></span>

confirm Password <input type='password' id='confirmPassword' name='confirmPassword'>
<br>
<span class='error' id='confirmPasswordError'></span>

<button type='submit'>Create Account</button>

</form>

</br>

<form id='loginForm' action='/test/LoginForm.jsp' method='post'>
<button>Login</button>
</form>


</body>
</html>