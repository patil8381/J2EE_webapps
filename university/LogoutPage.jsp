<jsp:useBean id='messageBean' scope='request' class='com.university.beans.MessageBean' />

<!DOCTYPE HTML>
<html>
<head>
<script src='/university/assets/js/LoginForm.js?asdf=1'></script>
<link rel='stylesheet' type='text/css' href='/university/assets/css/styles.css?sdf=3' />
</head>
<body>
<h2>Login</h2>

<div> 
<jsp:getProperty name='messageBean' property='message' />
</div>

<form id='loginForm' action='/test/LoginForm.jsp' method='post'>
<button href='' >Login</button>
</form>

<form id='signUpForm' action='/test/SignUpForm.jsp' method='post'>
<button href='' >Register</button>
</form>

</body>
</html>