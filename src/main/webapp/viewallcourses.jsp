<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Courses</title>
</head>
<body>
    <h2>My Courses</h2>
    <table border="1">
        <tr>
            <th>Category</th>
            <th>Course Name</th>
            <th>Description</th>
            <th>Credits</th>
            <th>Image</th>
            <th>Link</th>
        </tr>
        <c:forEach var="course" items="${courses}">
            <tr>
                <td>${course.category}</td>
                <td>${course.name}</td>
                <td>${course.description}</td>
                <td>${course.credits}</td>
                <td>
                    <c:if test="${course.image != null}">
                        <img src="displaycourseimage?id=${course.id}" width="100" height="100">
                    </c:if>
                </td>
                <td><a href="${course.url}" target="_blank">Course Link</a></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
