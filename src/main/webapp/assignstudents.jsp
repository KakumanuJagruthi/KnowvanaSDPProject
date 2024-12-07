<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Assign Students to Courses</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<%@include file="edunavbar.jsp" %>
<main>
    <div class="container">
        <h2>Assign Students to Courses</h2>
        
        <form action="assignStudentToCourse" method="post">
            <div class="form-group">
                <label for="studentId">Select Student:</label>
                <select id="studentId" name="studentId" required>
                    <c:forEach var="student" items="${students}">
                        <option value="${student.id}">${student.name}</option>
                    </c:forEach>
                </select>
            </div>

            <div class="form-group">
                <label for="courseId">Select Course:</label>
                <select id="courseId" name="courseId" required>
                    <c:forEach var="course" items="${courses}">
                        <option value="${course.id}">${course.name}</option>
                    </c:forEach>
                </select>
            </div>

            <div class="form-group">
                <button type="submit" class="btn">Assign</button>
            </div>
        </form>
    </div>
</main>
</body>
</html>
