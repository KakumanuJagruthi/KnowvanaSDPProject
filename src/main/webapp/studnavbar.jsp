<!DOCTYPE html>
<html>
<head>
    <title>Student Dashboard</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <!-- Sidebar -->
    <div class="sidebar" id="sidebar">
        <div style="text-align: center; margin-bottom: 24px;">
            <img src="/images/knowvana-logo.png" alt="Logo" style="height: 150px; width: auto;">
        </div>
        <nav>
            <ul>
                <li><a href="studhome">Home</a></li>
                <li><a href="studprofile">My Profile</a></li>
                <li><a href="updatestud">Update Profile</a></li>
                <li><a href="viewallcoursesstud">View Courses</a></li>
                <li><a href="savedcourses">Saved Courses</a></li>
                <li><a href="studlogout">Logout</a></li>
            </ul>
        </nav>
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
