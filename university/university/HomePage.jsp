<%@ taglib uri='/WEB-INF/university.tld' prefix='univ' %>

<univ:IfInvalidUser>
<jsp:forward page='/LoginForm.jsp' />
</univ:IfInvalidUser >

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>University Dashboard</title>
 
 <style>
     :root {
    --primary-color: #004d99; /* Deep University Blue */
    --secondary-color: #f0f4f8; /* Light background */
    --accent-color: #ff9900; /* Orange for alerts/CTAs */
    --text-dark: #333;
    --text-light: #fff;
    --font-stack: 'Poppins', sans-serif;
}

/* General Reset and Body */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: var(--font-stack);
    background-color: var(--secondary-color);
    color: var(--text-dark);
}

/* --- 1. Navigation Bar --- */
.navbar {
    position: sticky;
    top: 0;
    width: 100%;
    display: flex;
    justify-content: space-between;
    align-items: center;
    background-color: var(--primary-color);
    padding: 15px 50px;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.2);
    z-index: 1000;
}

.logo {
    color: var(--text-light);
    font-size: 1.8em;
    font-weight: 700;
}

.nav-links {
    list-style: none;
    display: flex;
    gap: 30px;
}

.nav-links a {
    text-decoration: none;
    color: var(--text-light);
    font-weight: 500;
    padding: 5px 0;
    transition: color 0.3s, border-bottom 0.3s;
    border-bottom: 2px solid transparent;
}

.nav-links a:hover,
.nav-links a.active {
    color: var(--accent-color);
    border-bottom: 2px solid var(--accent-color);
}

.logout-btn {
    background-color: #dc3545; /* Red logout button */
    padding: 8px 15px !important;
    border-radius: 5px;
    border: none !important;
}

.logout-btn:hover {
    background-color: #c82333;
}


/* --- 2. Hero Section (Background Image) --- */
.hero-section {
    /* Set your preferred image URL below */
    background-image: url('https://images.unsplash.com/photo-1517430855263-8f0ef1a1f0a9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80');
    background-size: cover;
    background-position: center;
    height: 40vh; /* Takes up 40% of the viewport height */
    display: flex;
    align-items: center;
    justify-content: center;
    text-align: center;
    position: relative;
    /* Dark overlay for text readability */
    box-shadow: inset 0 0 0 1000px rgba(0, 0, 0, 0.4); 
}

.hero-content {
    color: var(--text-light);
    z-index: 1;
}

.hero-content h1 {
    font-size: 3em;
    margin-bottom: 10px;
}

.hero-content p {
    font-size: 1.2em;
    margin-bottom: 20px;
}

.cta-button {
    display: inline-block;
    padding: 12px 30px;
    background-color: var(--accent-color);
    color: var(--text-dark);
    text-decoration: none;
    font-weight: 600;
    border-radius: 5px;
    transition: background-color 0.3s;
}

.cta-button:hover {
    background-color: #e68a00;
}


/* --- 3. Dashboard Content --- */
.dashboard-content {
    padding: 40px 50px;
    max-width: 1200px;
    margin: 0 auto; /* Center content */
}

.section-title {
    font-size: 1.8em;
    color: var(--primary-color);
    margin: 30px 0 20px 0;
    border-bottom: 2px solid #e0e0e0;
    padding-bottom: 5px;
}

/* Stats Grid Layout */
.stats-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
    gap: 25px;
    margin-bottom: 40px;
}

.stat-card {
    background-color: var(--card-color);
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.08);
    transition: transform 0.2s;
}

.stat-card:hover {
    transform: translateY(-5px);
}

.stat-card h3 {
    font-size: 1.1em;
    color: #6c757d;
    margin-bottom: 10px;
}

.stat-number {
    font-size: 2.5em;
    font-weight: 700;
    color: var(--primary-color);
}

.stat-number.alert {
    color: var(--accent-color); /* Highlight alert number */
}

/* Announcements */
.announcement-item {
    background-color: var(--card-color);
    padding: 15px;
    margin-bottom: 10px;
    border-left: 5px solid var(--primary-color);
    border-radius: 4px;
    display: flex;
    align-items: center;
}

.announcement-tag {
    display: inline-block;
    background-color: var(--primary-color);
    color: var(--text-light);
    padding: 4px 8px;
    border-radius: 4px;
    font-size: 0.75em;
    font-weight: 600;
    margin-right: 15px;
}

.announcement-tag.finance {
    background-color: #17a2b8; /* Different color for financial alerts */
}

.announcement-item p {
    margin: 0;
    font-size: 0.95em;
}

/* Responsiveness */
@media (max-width: 768px) {
    .navbar {
        padding: 15px 20px;
    }

    .nav-links {
        display: none; /* Hide for true mobile view, but for simple UI, let's simplify */
        gap: 15px;
    }

    .nav-links li:last-child { /* show logout */
        display: block;
    }

    .hero-content h1 {
        font-size: 2.2em;
    }

    .dashboard-content {
        padding: 20px;
    }
}
 </style>
 
</head>
<body>

    <nav class="navbar">
        <div class="logo">UniPortal</div>
        <ul class="nav-links">
            <li><a href="#" class="active">Home</a></li>
            <li><a href="profile.html">My Profile</a></li>
            <li><a href="courses.html">Courses</a></li>
            <li><a href="grades.html">Grades</a></li>
            <li><a href="finance.html">Finance</a></li>
            <li><form id='logoutButton' action='/test/Logout.jsp' method='post'>
                    <button type='submit' class="logout-btn">Logout</button>
                </form>
            </li>
        </ul>
    </nav>

    <div class="hero-section">
        <div class="hero-content">
            <h1>Welcome Back, ${userBean.firstName} ${userBean.lastName}!</h1>
            <p>Access your grades, courses, and personalized announcements below.</p>
            <a href="courses.html" class="cta-button">View My Courses</a>
        </div>
    </div>

    <div class="dashboard-content">
        <h2 class="section-title">Quick Overview</h2>
        
        <div class="stats-grid">
            <div class="stat-card">
                <h3>Current GPA</h3>
                <p class="stat-number">3.85</p>
            </div>
            <div class="stat-card">
                <h3>Enrolled Courses</h3>
                <p class="stat-number">4</p>
            </div>
            <div class="stat-card">
                <h3>Unread Messages</h3>
                <p class="stat-number alert">2</p>
            </div>
            <div class="stat-card">
                <h3>Next Exam</h3>
                <p class="stat-text">Dec 15th</p>
            </div>
        </div>

        <h2 class="section-title">Important Announcements</h2>
        <div class="announcement-list">
            <div class="announcement-item">
                <span class="announcement-tag">Academic</span>
                <p>Course registration for the Spring semester opens Nov 1st.</p>
            </div>
            <div class="announcement-item">
                <span class="announcement-tag finance">Financial</span>
                <p>Tuition fee deadline is approaching. Check your finance tab.</p>
            </div>
        </div>
    </div>

</body>
</html>