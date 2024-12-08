<!DOCTYPE html>
<html>
<head>
    <title>Educator Dashboard</title>
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
                <li><a href="eduhome">Home</a></li>
                <li><a href="viewallstud">View All Student Records</a></li>
                <li><a href="deletestud">Delete Student Record</a></li>
                <li><a href="viewallcourses">View All Courses</a></li> <!-- View All Courses -->
                <li><a href="addcourse">Add New Course</a></li> <!-- Add New Course -->
                
                <li><a href="edulogout">Logout</a></li>
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
