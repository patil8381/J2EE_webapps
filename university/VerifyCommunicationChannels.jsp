<jsp:useBean id='userBean' scope='session' class='com.university.beans.UserBean' />
<jsp:setProperty name='userBean' property='*' />
<jsp:forward page='/testVerifyCommunicationChannels' />

