<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Knowvana - Educational Company</title>
    <link rel="stylesheet" href="mainstyle.css">
    <link rel="stylesheet" href="https://cdn.tailwindcss.com">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&display=swap" rel="stylesheet">
</head>
<style>

    /* Apply the background image to the body */
    body {
        font-family: 'Poppins', sans-serif;
        background-image: url('https://storage.googleapis.com/a1aa/image/HwecPrKPpxQ6byQ1OoqJnvLWeojU054TTAYiWALnG6p6qjrTA.jpg');
        background-size: cover; /* Ensures the image covers the entire screen */
        background-position: center; /* Keeps the image centered */
        background-attachment: fixed; /* Keeps the background fixed while scrolling */
        color: white; /* Makes text stand out */
    }

    /* Main container styling */
    .home-container {
        position: relative;
        z-index: 1; /* Ensures the content is above the background */
        padding: 20px;
    }

    /* Add a semi-transparent background to make text more readable */
    .welcome, .quick-links, .stats, .announcements {
        background: rgba(0, 0, 0, 0.6); /* Dark background with transparency */
        padding: 20px;
        border-radius: 10px;
        margin-bottom: 20px;
    }

    /* Styles for the announcement row and items */
    .announcement-row {
        display: flex;
        justify-content: space-between;
    }

    .announcement-item {
        background-color: rgba(255, 255, 255, 0.8);
        border-radius: 8px;
        padding: 20px;
        flex: 1;
        margin: 10px;
        display: flex;
        align-items: center;
    }

    .announcement-item i {
        font-size: 2rem;
        color: #F29F58;
        margin-right: 20px;
    }

    .announcement-text h3 {
        font-size: 1.5rem;
        margin-bottom: 5px;
    }

    .announcement-text p {
        font-size: 1rem;
        color: #333;
    }

    .card:hover {
        transform: translateY(-10px);
        box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
    }

    .arrow-btn {
        background-color: black;
        color: white;
        border-radius: 50%;
        width: 40px;
        height: 40px;
        display: flex;
        align-items: center;
        justify-content: center;
        position: absolute;
        top: 50%;
        transform: translateY(-50%);
        cursor: pointer;
        z-index: 10;
    }
    .arrow-btn:hover {
        background-color: #4a4a4a;
    }
    .arrow-btn-left {
        left: 20px;
    }
    .arrow-btn-right {
        right: 20px;
    }
    .slide {
        display: none;
    }
    .slide.active {
        display: block;
    }
</style>

<body>
    <%@ include file="mainnavbar.jsp" %>
    <main class="home-container">
        <!-- Welcome Section -->
        <section class="welcome">
            <h1>Welcome to Knowvana</h1>
            <p>Our platform is designed to empower educators and students alike, fostering a seamless online learning experience. Educators can easily create and manage courses, upload engaging content, track student progress, and assess performance. Students can explore a wide range of courses, access materials, submit assignments, and monitor their own progress. With a user-friendly interface and robust features, this system bridges the gap between teaching and learning, making education accessible and efficient for everyone. Start your journey today and transform the way you teach or learn!</p>
        </section>

        <!-- Quick Links Section -->
        <section class="quick-links">
            <h2>Quick Links</h2>
            <div class="cards">
                <a href="studreg" class="card">
                    <i class="fa fa-user-plus"></i>
                    <h3>Student Registration</h3>
                </a>
                <a href="edulogin" class="card">
                    <i class="fa fa-chalkboard-teacher"></i>
                    <h3>Educator Login</h3>
                </a>
                <a href="viewallcourses" class="card">
                    <i class="fa fa-book"></i>
                    <h3>Courses</h3>
                </a>
            </div>
        </section>

        <!-- Statistics Section -->
        <section class="stats">
            <h2>Platform Statistics</h2>
            <div class="stats-grid">
                <div class="stat-item">
                    <h3>4000+</h3>
                    <p>Registered Students</p>
                </div>
                <div class="stat-item">
                    <h3>50+</h3>
                    <p>Courses Available</p>
                </div>
                <div class="stat-item">
                    <h3>100+</h3>
                    <p>Educators</p>
                </div>
            </div>
        </section>

        <!-- Announcements Section -->
        <section class="announcements">
            <h2>Announcements</h2>
            <div class="announcement-row">
                <div class="announcement-item">
                    <i class="fa fa-bullhorn"></i>
                    <div class="announcement-text">
                        <h3>New Course on Machine Learning</h3>
                        <p>Starting January 2025. Don't miss out on this exciting opportunity to learn Machine Learning!</p>
                    </div>
                </div>
                <div class="announcement-item">
                    <i class="fa fa-users"></i>
                    <div class="announcement-text">
                        <h3>Educator Workshop</h3>
                        <p>Join us on December 15, 2024 for an engaging workshop designed for educators.</p>
                    </div>
                </div>
                <div class="announcement-item">
                    <i class="fa fa-calendar"></i>
                    <div class="announcement-text">
                        <h3>End-of-Term Assessments</h3>
                        <p>Scheduled for December 2024. Be prepared for the end-of-term evaluations!</p>
                    </div>
                </div>
            </div>
        </section>
        <%@ include file="footer.jsp" %>
    </main>
    
</body>
</html>
