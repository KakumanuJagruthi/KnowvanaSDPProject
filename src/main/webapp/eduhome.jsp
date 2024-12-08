<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.klef.jfsd.springboot.model.Educator"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Knowvana - Educator Dashboard</title>
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
        background-size: cover;
        background-position: center;
        background-attachment: fixed;
        color: white;
    }

    /* Main container styling */
    .home-container {
        position: relative;
        z-index: 1;
        padding: 20px;
    }

    /* Section background with transparency for readability */
    .welcome, .quick-links, .stats, .assignments, .announcements {
        background: rgba(0, 0, 0, 0.6);
        padding: 20px;
        border-radius: 10px;
        margin-bottom: 20px;
        color: #F29F58;
    }

    /* Stats and other sections styling */
    .stats-grid, .assignment-list {
        display: grid;
        grid-template-columns: repeat(3, 1fr);
        gap: 20px;
    }

    .stat-item, .assignment-item {
        background: rgba(255, 255, 255, 0.3);
        padding: 20px;
        border-radius: 8px;
        text-align: center;
    }

    /* Announcements styling */
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
</style>

<body>
    <%@ include file="edunavbar.jsp" %>
    <main class="home-container">
        <!-- Welcome Section -->
        <section class="welcome">
            <h1>Welcome, <c:out value="${sessionScope.educatorName}"></c:out></h1> <!-- Output educator's name from session -->
            <p>Welcome to your educator dashboard. Here, you can manage your courses, assignments, and track student progress. Stay organized and keep an eye on upcoming deadlines and tasks.</p>
        </section>

        <!-- Quick Links Section -->
        <section class="quick-links">
            <h2>Quick Links</h2>
            <div class="cards">
                <a href="viewallcourses" class="card">
                    <i class="fa fa-book"></i>
                    <h3>Your Courses</h3>
                </a>
                <a href="viewallstud" class="card">
                    <i class="fa fa-user"></i>
                    <h3>Student Profiles</h3>
                </a>
            </div>
        </section>

        <!-- Platform Stats Section -->
        <section class="stats">
            <h2>Platform Stats</h2>
            <div class="stats-grid">
                <div class="stat-item">
                    <h3>10</h3>
                    <p>Courses Taught</p>
                </div>
                <div class="stat-item">
                    <h3>150</h3>
                    <p>Students Enrolled</p>
                </div>
                <div class="stat-item">
                    <h3>3</h3>
                    <p>Upcoming Exams</p>
                </div>
            </div>
        </section>

        <!-- Upcoming Assignments Section -->
        <section class="assignments">
            <h2>Upcoming Assignments to Review</h2>
            <div class="assignment-list">
                <div class="assignment-item">
                    <strong>Math Assignment Review</strong><br>
                    Due: 12th December 2024
                </div>
                <div class="assignment-item">
                    <strong>Science Project Evaluation</strong><br>
                    Due: 15th December 2024
                </div>
                <div class="assignment-item">
                    <strong>English Essay Review</strong><br>
                    Due: 18th December 2024
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
                        <h3>Faculty Meeting Schedule</h3>
                        <p>The next faculty meeting will be on December 10th. Please attend!</p>
                    </div>
                </div>
                <div class="announcement-item">
                    <i class="fa fa-calendar"></i>
                    <div class="announcement-text">
                        <h3>End of Term Exams</h3>
                        <p>Final exams will be held from December 22nd. Please prepare accordingly!</p>
                    </div>
                </div>
                <div class="announcement-item">
                    <i class="fa fa-users"></i>
                    <div class="announcement-text">
                        <h3>New Faculty Training</h3>
                        <p>Training sessions for new faculty members will be held on January 5th. Don't miss out!</p>
                    </div>
                </div>
            </div>
        </section>

        <%@ include file="footer.jsp" %>
    </main>
</body>
</html>
