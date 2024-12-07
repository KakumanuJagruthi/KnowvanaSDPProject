<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Educator Home</title>
    <link rel="stylesheet" href="mainstyle.css"> <!-- Include your main CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
    <!-- Include Sidebar -->
    <div class="sidebar" id="sidebar">
        <div style="text-align: center; margin-bottom: 24px;">
            <img src="/images/knowvana-logo.png" alt="Logo">
        </div>
        <a href="/" ><i class="fa fa-home"></i> Home</a>
        <a href="about"><i class="fa fa-info-circle" ></i> About Us</a>
        <a href="studreg"><i class="fa fa-user-plus"></i> Student Registration</a>
        <a href="studlogin"><i class="fa fa-sign-in"></i> Student Login</a>
        <a href="edulogin"><i class="fa fa-chalkboard-teacher"></i> Educator Login</a>
        
        <button class="toggle-btn" onclick="toggleSidebar()">&#9664;</button>
    </div>

    <script>
        function toggleSidebar() {
            const sidebar = document.getElementById("sidebar");
            sidebar.classList.toggle("collapsed");
            document.querySelector(".toggle-btn").innerHTML = sidebar.classList.contains("collapsed") ? "&#9654;" : "&#9664;";
        }
    </script>
</body>
</html>
