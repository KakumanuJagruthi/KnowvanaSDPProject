<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.klef.jfsd.springboot.model.Student"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%
    Student s = (Student) session.getAttribute("student");
    if (s == null) {
        response.sendRedirect("studsession");
        return;
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Knowvana - Student Dashboard</title>
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
        color : #F29F58;
        
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
    <%@ include file="studnavbar.jsp" %>
    <main class="home-container">
        <!-- Welcome Section -->
        <section class="welcome">
            <h1>Welcome, <c:out value="${sessionScope.studentName}"></c:out></h1> <!-- Output student's name from session -->
            <p>Welcome to your student dashboard. Here, you can find all the important information related to your courses, assignments, and other updates. Stay on top of your studies and keep track of everything in one place.</p>
        </section>

        <!-- Quick Links Section -->
        <section class="quick-links">
            <h2>Quick Links</h2>
            <div class="cards">
                <a href="view_courses" class="card">
                    <i class="fa fa-book"></i>
                    <h3>Your Courses</h3>
                </a>
                <a href="view_assignments" class="card">
                    <i class="fa fa-tasks"></i>
                    <h3>Assignments</h3>
                </a>
                <a href="profile" class="card">
                    <i class="fa fa-user"></i>
                    <h3>Your Profile</h3>
                </a>
            </div>
        </section>

        <!-- Platform Stats Section -->
        <section class="stats">
            <h2>Platform Stats</h2>
            <div class="stats-grid">
                <div class="stat-item">
                    <h3>5</h3>
                    <p>Courses Enrolled</p>
                </div>
                <div class="stat-item">
                    <h3>12</h3>
                    <p>Assignments Pending</p>
                </div>
                <div class="stat-item">
                    <h3>3</h3>
                    <p>Upcoming Exams</p>
                </div>
            </div>
        </section>

        <!-- Upcoming Assignments Section -->
        <section class="assignments">
            <h2>Upcoming Assignments</h2>
            <div class="assignment-list">
                <div class="assignment-item">
                    <strong>Math Assignment</strong><br>
                    Due: 12th December 2024
                </div>
                <div class="assignment-item">
                    <strong>Science Project</strong><br>
                    Due: 15th December 2024
                </div>
                <div class="assignment-item">
                    <strong>English Essay</strong><br>
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
                        <h3>Winter Break Schedule</h3>
                        <p>Winter Break starts from December 20th. Get ready for a well-deserved rest!</p>
                    </div>
                </div>
                <div class="announcement-item">
                    <i class="fa fa-calendar"></i>
                    <div class="announcement-text">
                        <h3>Final Exams Schedule</h3>
                        <p>Final Exams will be held from December 22nd to December 24th. Plan ahead!</p>
                    </div>
                </div>
                <div class="announcement-item">
                    <i class="fa fa-users"></i>
                    <div class="announcement-text">
                        <h3>New Course Enrollment</h3>
                        <p>Enrollment for new courses starts January 2025. Don't miss out!</p>
                    </div>
                </div>
            </div>
        </section>

        <%@ include file="footer.jsp" %>
    </main>
</body>
</html>
