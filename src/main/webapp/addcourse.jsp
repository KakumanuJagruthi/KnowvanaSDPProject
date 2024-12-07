<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Course</title>
</head>
<body>
    <h2>Add a New Course</h2>
    <form action="insertcourse" method="post" enctype="multipart/form-data">
        <label for="category">Category:</label><br>
        <input type="text" id="category" name="category" required><br><br>
        
        <label for="name">Course Name:</label><br>
        <input type="text" id="name" name="name" required><br><br>
        
        <label for="description">Description:</label><br>
        <textarea id="description" name="description" required></textarea><br><br>
        
        <label for="credits">Credits:</label><br>
        <input type="number" id="credits" name="credits" required><br><br>
        
        <label for="courseImage">Course Image:</label><br>
        <input type="file" id="courseImage" name="courseImage"><br><br>
        
        <label for="courseLink">Course Link:</label><br>
        <input type="text" id="courseLink" name="courseLink"><br><br>
        
        <input type="submit" value="Add Course">
    </form>
</body>
</html>
