<%@ taglib uri='/WEB-INF/university.tld' prefix='univ' %>

<univ:IfInvalidUser>
<jsp:forward page='/LoginForm.jsp' />
</univ:IfInvalidUser >

<!DOCYPTE HTML>
<html>
<head>
</head>
<body>
Welcome to Home Page ${userBean.firstName} ${userBean.lastName} <br/>


<form id='logoutButton' action='/test/Logout.jsp' method='post'>
<button type='submit'>Logout</button>
</form>

</body>
</html>