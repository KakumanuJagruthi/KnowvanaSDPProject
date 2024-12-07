<%@ page import="com.klef.jfsd.springboot.model.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    <title>Student Information</title>
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
        margin: 0;
        padding: 0;
    }

    .main-content {
        padding: 40px 20px;
        z-index: 1;
        max-width: 1300px;  /* Increased the container width */
        margin: 0 auto;
    }

    .student-info-container {
        background: rgba(0, 0, 0, 0.6);
        padding: 80px;
        border-radius: 10px;
        color: #F29F58;
        margin: 0 auto;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
    }

    .student-info-container h2 {
        font-size: 2rem;
        margin-bottom: 30px;
        text-align: center;
    }

    .info {
        margin-bottom: 20px;
        font-size: 1.2rem;
        display: grid;
        grid-template-columns: 200px 1fr;  /* Aligns the label and value in the same row */
        gap: 20px;  /* Adds space between columns */
        padding: 10px;
        border-radius: 8px;
        background: rgba(255, 255, 255, 0.1);
    }

    .info span {
        font-weight: bold;
        color: #F29F58;
    }

    .info div {
        font-weight: normal;
        color: #fff;
    }

    /* Styling for spacing and hover effects */
    .info:hover {
        background-color: rgba(255, 255, 255, 0.2);
        cursor: pointer;
        transition: background-color 0.3s ease-in-out;
    }
</style>
<body>
    <%@ include file="studnavbar.jsp" %>

    <main>
        <div class="main-content">
            <!-- Main content area -->
            <div class="student-info-container">
                <h2>Student Information</h2>
                <div class="info">
                    <span>USERNAME:</span> <div><%= s.getUsername() %></div>
                </div>
                <div class="info">
                    <span>NAME:</span> <div><%= s.getName() %></div>
                </div>
                <div class="info">
                    <span>GENDER:</span> <div><%= s.getGender() %></div>
                </div>
                <div class="info">
                    <span>DOB:</span> <div><%= s.getDateofbirth() %></div>
                </div>
                <div class="info">
                    <span>DEPARTMENT:</span> <div><%= s.getDepartment() %></div>
                </div>
                <div class="info">
                    <span>EMAIL:</span> <div><%= s.getEmail() %></div>
                </div>
                <div class="info">
                    <span>LOCATION:</span> <div><%= s.getLocation() %></div>
                </div>
                <div class="info">
                    <span>CONTACT:</span> <div><%= s.getContact() %></div>
                </div>
                <div class="info">
                    <span>STATUS:</span> <div><%= s.getStatus() %></div>
                </div>
            </div>
        </div>
    </main>
</body>
</html>
