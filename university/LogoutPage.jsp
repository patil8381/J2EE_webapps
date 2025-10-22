<jsp:useBean id='messageBean' scope='request' class='com.university.beans.MessageBean' />

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Logged Out</title>

    <style>
        :root {
        --info-color: #17a2b8; /* Informative blue/teal */
        --info-light: #e0f7fa; /* Light background for the banner */
        --background-color: #f7f7f7;
        --text-dark: #333;
        --font-stack: 'Poppins', sans-serif;
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

/* General Body and Layout */
body {
    font-family: var(--font-stack);
    background-color: var(--background-color);
    display: flex;
    flex-direction: column;
    align-items: center;
    min-height: 100vh;
    margin: 0;
    padding-top: 50px; /* Space for the notification */
    box-sizing: border-box;
}

/* Placeholder Content Style */
.placeholder-content {
    text-align: center;
    margin-top: 150px;
}

.placeholder-content a {
    color: var(--info-color);
    text-decoration: none;
    font-weight: 600;
}

/* --- Notification Banner Styles --- */

.notification-banner {
    /* Fixed position at the top */
    position: fixed;
    top: -100px; /* Start off-screen */
    left: 50%;
    transform: translateX(-50%);
    
    /* Look & Feel */
    display: flex;
    align-items: center;
    padding: 15px 25px;
    background-color: var(--info-light);
    border: 1px solid var(--info-color);
    border-radius: 8px;
    box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
    width: 90%;
    max-width: 450px;
    z-index: 1000;
    
    /* Animation */
    transition: top 0.5s ease-in-out;
}

/* Class to show the banner */
.notification-banner.show {
    top: 20px; /* Slide down to 20px from the top */
}

.notification-banner .icon {
    /* Custom icon styling for "i" (information) */
    font-style: normal; 
    font-size: 1.8em;
    font-weight: 600;
    color: var(--info-color);
    margin-right: 15px;
    line-height: 1;
    border: 2px solid var(--info-color);
    border-radius: 50%;
    width: 30px;
    height: 30px;
    display: flex;
    justify-content: center;
    align-items: center;
}

.notification-banner .message-content {
    flex-grow: 1;
}

.notification-banner .title {
    font-weight: bold;
    color: var(--info-color);
    margin: 0;
    font-size: 1.1em;
}

.notification-banner .body {
    color: var(--text-dark);
    margin: 2px 0 0 0;
    font-size: 0.9em;
}

/* Close button */
.close-btn {
    background: none;
    border: none;
    color: var(--info-color);
    font-size: 1.5em;
    margin-left: 20px;
    cursor: pointer;
    line-height: 1;
    opacity: 0.7;
    transition: opacity 0.2s;
}

.close-btn:hover {
    opacity: 1;
}
    </style>
</head>
<body>

    <div> 
        <jsp:getProperty name='messageBean' property='message' />
    </div>

    <div id="logout-notification" class="notification-banner show">
        <span class="icon">i</span>
        <div class="message-content">
            <p class="title">You Have Logged Out</p>
            <p class="body">Your session has been successfully terminated.</p>
        </div>
        <button class="close-btn" onclick="closeNotification()">x</button>
    </div>

    <div class="placeholder-content">
        <h1>Thank You for Visiting!</h1>
        <p>Please <a href="/test/LoginForm.jsp">login again</a> to access the University Portal.</p>
    </div>

    <script>

        function validateForm(f)
        {
        var is_valid=true;
        var firstInvalidComponent=null;

        var firstName=f.firstName.value.trim();
        if(firstName.length==0)
        {
        firstInvalidComponent=f.firstName;
        is_valid=false;
        }

        // apply other validations

        if(!is_valid) firstInvalidComponent.focus();
        return is_valid;
        }


        // Simple JavaScript to hide the notification
        function closeNotification() {
            const notification = document.getElementById('logout-notification');
            notification.classList.remove('show');
            // Optional: Remove the banner completely after transition
            setTimeout(() => {
                notification.style.display = 'none';
            }, 500);
        }

        // Optional: Auto-hide the notification after 5 seconds
        window.onload = function() {
            setTimeout(closeNotification, 2000);
        };
    </script>
</body>
</html>

