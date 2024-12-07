<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Courses</title>
    <link rel="stylesheet" href="css/tablestyle.css">
</head>
<body>
<%@include file="edunavbar.jsp" %>
<main>
    <div class="container">
        <h2>Courses Available</h2>
        
        <!-- Check if courses list is not empty -->
        <c:if test="${not empty courses}">
            <table>
                <thead>
                    <tr>
                        <th>Course Name</th>
                        <th>Category</th>
                        <th>Description</th>
                        <th>Credits</th>
                        <th>Enroll</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Iterate over the courses list and display each course's details -->
                    <c:forEach var="course" items="${courses}">
                        <tr>
                            <td>${course.name}</td>
                            <td>${course.category}</td>
                            <td>${course.description}</td>
                            <td>${course.credits}</td>
                            <td>
                                <!-- Button to enroll in the course (You may need to implement the enrollment functionality) -->
                                <a href="enrollcourse?courseId=${course.id}" class="btn enroll-btn">Enroll</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </c:if>

        <!-- If no courses are available, show a message -->
        <c:if test="${empty courses}">
            <p>No courses available at the moment.</p>
        </c:if>

    </div>
    </main>

</body>
</html>
