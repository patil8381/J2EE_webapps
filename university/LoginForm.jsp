<jsp:useBean id='userBean' scope='request' class='com.university.beans.UserBean' />
<jsp:useBean id='errorBean' scope='request' class='com.university.beans.ErrorBean' />
<jsp:useBean id='messageBean' scope='request' class='com.university.beans.MessageBean' />

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>University Login</title>
<script src='/university/assets/js/LoginForm.js?asdf=1'></script>

<style>
    :root {
    --primary-color: #0066cc; /* University Blue */
    --background-color: #eef1f5;
    --card-color: #ffffff;
    --text-color: #333;
    --error-color: #d9534f;
}

.error
{
color:red;
}
.formError
{
color:red;
font-size:20pt;
}


body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: var(--background-color);
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh; /* Ensures it fills the whole screen height */
    margin: 0;
}

/* Form Container (The Login Card) */
.container {
    background-color: var(--card-color);
    padding: 30px;
    border-radius: 12px;
    box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
    width: 100%;
    max-width: 380px; /* Compact width for login */
}

/* Heading */
h2 {
    text-align: center;
    color: var(--primary-color);
    margin-bottom: 25px;
    font-size: 1.6em;
    border-bottom: 1px solid #eee;
    padding-bottom: 10px;
}

/* Form Group Layout */
.form-group {
    margin-bottom: 20px;
}

label {
    display: block;
    margin-bottom: 5px;
    font-size: 0.95em;
    font-weight: 600;
    color: var(--text-color);
}

input {
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 6px;
    box-sizing: border-box;
    transition: all 0.2s ease-in-out;
    font-size: 1em;
}

input:focus {
    border-color: var(--primary-color);
    box-shadow: 0 0 0 3px rgba(0, 102, 204, 0.15);
    outline: none;
}

/* Button Styling */
button[type="submit"] {
    width: 100%;
    padding: 12px;
    background-color: var(--primary-color);
    color: white;
    border: none;
    border-radius: 6px;
    cursor: pointer;
    font-size: 1.05em;
    font-weight: bold;
    margin-top: 10px;
    transition: background-color 0.3s;
}

button[type="submit"]:hover {
    background-color: #004c99;
}

/* Error Message */
.error-message {
    color: var(--error-color);
    text-align: center;
    margin-top: 15px;
    font-size: 0.9em;
    font-weight: 600;
    display: none;
}

/* Footer Links */
.form-footer {
    text-align: center;
    margin-top: 25px;
    padding-top: 15px;
    border-top: 1px solid #eee;
    font-size: 0.9em;
    color: #666;
}

.form-footer a {
    color: var(--primary-color);
    text-decoration: none;
}

.form-footer a:hover {
    text-decoration: underline;
}

.form-footer span {
    margin: 0 10px;
    color: #ccc;
}
</style>
</head>
<body>

<div class='formError'> 
    <jsp:getProperty name='errorBean' property='error' />
</div>

<div> 
    <jsp:getProperty name='messageBean' property='message' />
</div>

    <div class="container login-container">
        <h2>University Login</h2>
        <form id='loginForm' action='/test/Login.jsp' method='post' onsubmit='return validateLoginForm(this)'>
            
            <div class="form-group">
                <label for="emailId">Email ID / Student ID</label>
                <input type='text' id='emailId' name='emailId' value='${userBean.emailId}' required>
                <span class='error' id='mobileNumberError'></span>
            </div>

            


            <div class="form-group">
                <label for="Password">Password</label>
                <input type='password' id='password' name='password' >
            </div>

            <button type="submit">Log In</button>
            
            <div class="form-footer">
                <a href="/test/SignUpForm.jsp">Forgot Password?</a>
                <span>|</span>
                <a href="/test/SignUpForm.jsp">Need an Account? Register</a>
            </div>
        </form>
    </div>

</body>

</html>
