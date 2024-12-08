<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Assignment</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&display=swap" rel="stylesheet">
    <style>
        .error-message {
            color: red;
            font-size: 0.9em;
            margin-top: 5px;
        }
        body {
            font-family: 'Poppins', sans-serif;
            background-image: url('https://storage.googleapis.com/a1aa/image/HwecPrKPpxQ6byQ1OoqJnvLWeojU054TTAYiWALnG6p6qjrTA.jpg');
            background-size: cover; /* Ensures the image covers the entire screen */
            background-position: center; /* Keeps the image centered */
            background-attachment: fixed; /* Keeps the background fixed while scrolling */
            color: #F29F58; /* Makes text stand out */
        }
        .form-container {
            margin: 20px auto;
            padding: 20px;
            background-color: rgba(0, 0, 0, 0.5); /* Darker background for form */
            border-radius: 8px;
            width: 50%;
            color : #F29F58;
        }
        table {
            width: 100%;
            margin-bottom: 20px;
        }
        td {
            padding: 10px;
            color : #F29F58;
        }
        label {
            color : #F29F58; 
            /* Changed the color of the labels */
        }
        input[type="text"], input[type="number"], input[type="url"], textarea {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            border-radius: 4px;
            border: 1px solid #ccc;
        }
        input[type="file"] {
            padding: 8px;
            margin-top: 5px;
            border-radius: 4px;
            border: 1px solid #ccc;
        }
        input[type="submit"], input[type="reset"] {
            padding: 10px 20px;
            background-color: #4CAF50;
            border: none;
            border-radius: 4px;
            color: white;
            cursor: pointer;
        }
        input[type="submit"]:hover, input[type="reset"]:hover {
            background-color: #45a049;
        }
        h3 {
            text-align: center;
            color : #F29F58;
        }
    </style>
</head>
<body>
<%@include file="edunavbar.jsp" %>
<main>
<div class="form-container">
    <h2><u>Add New Assignment</u></h2>

    <form action="/insertassignment" method="POST" enctype="multipart/form-data">
        <table>
        	<tr>
        		<td><label for="title">Assignment Title</label></td>
        		<td><input type="text" id="title" name="title" required placeholder="Enter assignment title"></td>
        	</tr>
        	<tr>
        		<td><label for="description">Description</label></td>
        		<td><textarea id="description" name="description" required placeholder="Enter assignment description"></textarea></td>
        	</tr>
        	<tr>
        		<td><label for="dueDate">Due Date</label></td>
        		<td><input type="date" id="dueDate" name="dueDate" required></td>
        	</tr>
        	<tr>
        		<td><label for="courseId">Course ID</label></td>
        		<td><input type="number" id="courseId" name="courseId" required placeholder="Enter the course ID"></td>
        	</tr>
        	<tr>
        		<td><label for="pdfFile">Upload Assignment PDF</label></td>
        		<td><input type="file" id="pdfFile" name="pdfFile" accept="application/pdf" required></td>
        	</tr>
        	<tr>
                        <td colspan="2" class="button-container">
                            <input type="submit" value="Add Assignment"/>
                            <input type="reset" value="Clear"/>
                        </td>
                    </tr>
        	
        </table>
    </form>
</div>
</main>
</body>
</html>
