<jsp:useBean id='userBean' scope='request' class='com.university.beans.UserBean' />
<jsp:useBean id='errorBean' scope='request' class='com.university.beans.ErrorBean' />

<!DOCTYPE html>
<html lang='en'>
<head>
    <meta charset='UTF-8'>
    <meta name='viewport' content='width=device-width, initial-scale=1.0'>
    <title>Compact University Enrollment</title>
<script src='/test/assets/js/SignUpForm.js?asdf=6'></script>
   
    <style>
        /* General Setup */
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
    /* Use 'height: 100vh' for a single-page fit on most devices */
    min-height: 100vh; 
    margin: 0;
    padding: 10px; /* Reduced padding for extra space */
    box-sizing: border-box;
}

/* Form Container (The Card) */
.container {
    background-color: var(--card-color);
    padding: 30px; /* Reduced padding from 40px */
    border-radius: 12px;
    box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
    width: 100%;
    max-width: 400px; /* Slimmer max width */
    /* Ensure it doesn't take too much height */
    max-height: 95vh;
    overflow-y: auto; /* Allow scroll only if absolutely necessary */
}

/* Heading */
h2 {
    text-align: center;
    color: var(--primary-color);
    margin-bottom: 25px;
    font-size: 1.6em; /* Slightly smaller font */
    border-bottom: 1px solid #eee;
    padding-bottom: 10px;
}

/* Layout for side-by-side fields (First/Last Name, Password/Confirm) */
.field-group {
    display: grid;
    grid-template-columns: 1fr 1fr; /* Two equal columns */
    gap: 15px; /* Space between columns */
    margin-bottom: 5px; /* Reduced margin */
}

/* Individual Form Group */
.form-group {
    margin-bottom: 15px; /* Reduced margin from 20px */
}

label {
    display: block;
    margin-bottom: 5px; /* Reduced margin */
    font-size: 0.9em;
    font-weight: 600;
    color: var(--text-color);
}

input {
    width: 100%;
    padding: 10px; /* Reduced padding from 12px */
    border: 1px solid #ccc;
    border-radius: 6px;
    box-sizing: border-box;
    transition: all 0.2s ease-in-out;
    font-size: 0.95em;
}

input:focus {
    border-color: var(--primary-color);
    box-shadow: 0 0 0 3px rgba(0, 102, 204, 0.15);
    outline: none;
}

/* Button Styling */
button[type='submit'] {
    width: 100%;
    padding: 12px;
    background-color: var(--primary-color);
    color: white;
    border: none;
    border-radius: 6px;
    cursor: pointer;
    font-size: 1em;
    font-weight: bold;
    margin-top: 15px;
    transition: background-color 0.3s;
}

button[type='submit']:hover {
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

/* Media Query for Mobile Responsiveness (Stack columns vertically) */
@media (max-width: 480px) {
    .container {
        padding: 20px;
        max-width: 95%; /* Adjust width on very small screens */
    }
    .field-group {
        grid-template-columns: 1fr; /* Stack fields one on top of the other */
        gap: 0;
    }
}
    </style>

</head>
<body>

    <div class='formError'> 

<jsp:getProperty name='errorBean' property='error' />
</div>


    <div class='container'>
        <h2>University Enrollment</h2>
        
        <form id='signUpForm' action='/test/SignUp.jsp' method='post' onsubmit='return validateForm(this)'>
    
            <div class='field-group'>
                <div class='form-group half-width'>
                    <label for='firstName'>First Name</label>
                    <input type='text' id='firstName' name='firstName' value='${userBean.firstName}'>
                    <span class='error' id='firstNameError'></span>
                </div>
                <div class='form-group half-width'>
                    <label for='lastName'>Last Name</label>
                    <input type='text' id='lastName' name='lastName' value='${userBean.firstName}'>
                    <span class='error' id='lastNameError'></span>
                </div>
            </div>

            <div class='form-group'>
                <label for='emailId'>Email ID</label>
                <input type='email' id='emailId' name='emailId' value='${userBean.emailId}' required>
                <span class='error' id='emailIdError'></span>
            </div>

            <div class='form-group'>
                <label for='mobileNumber'>Mobile Number</label>
                <input type='number' id='mobileNumber' name='mobileNumber' value='userBean.mobileNumber' pattern='[0-9]{10,}' title='Mobile number must be 10 digits or more' required>
                <span class='error' id='mobileNumberError'></span>
            </div>

            <div class='field-group'>
                <div class='form-group half-width'>
                    <label for='password'>Password</label>
                    <input type='password' id='password' name='password' required>
                    <span class='error' id='passwordError'></span>
                </div>
                <div class='form-group half-width'>
                    <label for='confirmPassword'>Confirm Password</label>
                    <input type='password' id='confirmPassword' name='confirmPassword' required>
                    <span class='error' id='confirmPasswordError'></span>
                </div>
            </div>

            <button type='submit'>Register Now</button>
            <p id='error-message' class='error-message'></p>

            <div class='form-footer'>
                <p>Already registered? <a href='/test/LoginForm.jsp'>Login here</a></p>
            </div>
        </form>
        
    </div>

    
</body>

</html>
