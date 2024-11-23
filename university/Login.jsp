<jsp:useBean id='userBean' scope='request' class='com.university.beans.UserBean' />
<jsp:setProperty name='userBean' property='*' />
<jsp:forward page='/login' />