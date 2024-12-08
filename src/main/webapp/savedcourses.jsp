<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Spring Boot Project</title>

    <!-- External Stylesheets -->
    <link rel="stylesheet" href="https://cdn.tailwindcss.com">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&display=swap" rel="stylesheet">
    
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-image: url('https://storage.googleapis.com/a1aa/image/HwecPrKPpxQ6byQ1OoqJnvLWeojU054TTAYiWALnG6p6qjrTA.jpg');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            color: #F29F58;
        }

        h3 {
            text-align: center;
            text-decoration: underline;
            color: #F29F58;
            margin-top: 20px;
        }

        #courseContainer {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
            margin-top: 30px;
            margin: 80px;
            max-height: 80vh; /* Limiting the height */
            overflow-y: auto; /* Enabling vertical scrolling */
        }

        .courseCard {
            width: 300px;
            background-color: rgba(0, 0, 0, 0.7);
            color: #F29F58;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
            padding: 50px;
            text-align: center;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .courseCard img {
            width: 80%;
            height: auto;
            border-radius: 10px;
            margin-bottom: 15px;
        }

        .courseCard h4 {
            font-size: 18px;
            margin: 10px 0;
        }

        .courseCard p {
            font-size: 14px;
            margin-bottom: 10px;
        }

        .courseCard a {
            color: #F29F58;
            text-decoration: none;
            font-weight: bold;
            border: 2px solid #F29F58;
            padding: 8px 12px;
            border-radius: 5px;
            transition: all 0.3s ease;
        }

        .courseCard a:hover {
            background-color: #F29F58;
            color: black;
        }
    </style>

    <script>
        function myFunction() {
            var input, filter, container, courseCards, i, txtValue;
            input = document.getElementById("myInput");
            filter = input.value.toUpperCase();
            container = document.getElementById("courseContainer");
            courseCards = container.getElementsByClassName("courseCard");

            for (i = 0; i < courseCards.length; i++) {
                txtValue = courseCards[i].querySelector("h4").textContent || courseCards[i].querySelector("h4").innerText;
                if (txtValue.toUpperCase().indexOf(filter) > -1) {
                    courseCards[i].style.display = "";
                } else {
                    courseCards[i].style.display = "none";
                }
            }
        }
    </script>
</head>

<body>

<%@ include file="edunavbar.jsp" %>

<h3><u>View All Saved Courses</u></h3>

<!-- Input to filter courses -->
<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Enter Course Name">

<!-- Course Container -->
<div id="courseContainer">
    <c:forEach items="${courselist}" var="course" varStatus="status" begin="0" end="1">
    <div class="courseCard">
        <!-- Image Display -->
        <img src="displaycourseimage?id=${course.id}" alt="Course Image">

        <!-- Course Details -->
        <h4><c:out value="${course.name}"></c:out></h4>
        <p><strong>Category:</strong> <c:out value="${course.category}"></c:out></p>
        <p><strong>Description:</strong> <c:out value="${course.description}"></c:out></p>
        <p><strong>Cost:</strong> <c:out value="${course.cost}"></c:out></p>
        <!-- Link to course -->
        <a href='<c:url value="${course.url}"></c:url>' target="_blank">Click Here To Access The Course</a>
    </div>
</c:forEach>
    
</div>

</body>

</html>
