
<%@ taglib uri='/WEB-INF/university.tld' prefix='univ' %>

<univ:IfInvalidUser>
<jsp:forward page='/LoginForm.jsp' />
</univ:IfInvalidUser >

<!DOCTYPE HTML>
<html>
<head>
</head>
<body>
Welcome to Verification page, ${userBean.firstName} ${userBean.lastName} <br/>

<form id='verify' action='/test/VerifyCommunicationChannels.jsp' method='post'>

<univ:IfEmailIdNotVerified>
Email id code <input type='text' id='emailIdCode' name='emailIdCode' ><br>
</univ:IfEmailIdNotVerified>

<univ:IfMobileNumberNotVerified>
Mobile Number code <input type='text' id='mobileNumberCode' name='mobileNumberCode' ><br>
</univ:IfMobileNumberNotVerified>

<button type='submit'>Verify</button>
</form>
<br>

<form id='logout' action='/test/Logout.jsp' >
<button type='submit' >Logout</button>
</form>
</body>
</html>
