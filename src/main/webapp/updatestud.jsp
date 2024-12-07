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
    <title>Update Student</title>
    <link rel="stylesheet" href="mainstyle.css">
    <link rel="stylesheet" href="https://cdn.tailwindcss.com">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&display=swap" rel="stylesheet">
</head>
<style>
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

    main {
        padding: 40px 20px;
        z-index: 1;
        max-width: 1300px;  /* Increased the container width */
        margin: 0 auto;
    }

    .form-container {
        background: rgba(0, 0, 0, 0.6);
        padding: 80px;
        border-radius: 30px;
        color: #F29F58;
        margin: 0 auto;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
    }

    h3 {
        font-size: 2rem;
        margin-bottom: 30px;
        text-align: center;
    }

    table {
        width: 100%;
        color: white;
    }

    td {
        padding: 10px;
        vertical-align: middle;
        font-size: 1rem;
    }

    label {
        font-weight: bold;
        color: #F29F58;
    }

    input, select {
        width: 100%;
        padding: 10px;
        margin: 10px 0;
        border-radius: 8px;
        background-color: rgba(255, 255, 255, 0.3);
        border: none;
        color: white;
    }

    input[type="radio"] {
        width: auto;
        margin-right: 10px;
    }

    input[type="submit"], input[type="reset"] {
        width: 48%;
        padding: 12px 0;
        background-color: #F29F58;
        color: white;
        font-size: 1rem;
        border-radius: 8px;
        cursor: pointer;
        border: none;
        margin: 20px 10px;
    }

    input[type="submit"]:hover, input[type="reset"]:hover {
        background-color: #f59e42;
    }

    .button-container {
        text-align: center;
    }

    /* Ensuring uniformity of the form inputs */
    .form-container input, .form-container select {
        font-size: 1rem;
        color: white;
    }

    /* Aligning the radio buttons and labels */
    .form-container input[type="radio"], 
    .form-container label {
        display: inline-block;
        margin-right: 10px;
    }

    .form-container td {
        text-align: left;
    }
</style>
<body>
    <%@ include file="studnavbar.jsp" %>

    <main>
        <div class="form-container">
            <h3><u>Update Student</u></h3>
            <form method="post" action="update">
                <table>
                    <tr>
                        <td><label for="sid">Enter ID</label></td>
                        <td><input type="number" id="sid" name="sid" value="<%= s.getId() %>" readonly required/></td>
                    </tr>
                    <tr>
                        <td><label for="susername">Enter Username</label></td>
                        <td><input type="text" id="susername" name="susername" value="<%= s.getUsername() %>" readonly required/></td>
                    </tr>
                    <tr>
                        <td><label for="sname">Enter Name</label></td>
                        <td><input type="text" id="sname" name="sname" value="<%= s.getName() %>" required/></td>
                    </tr>
                    <tr>
                        <td><label>Select Gender</label></td>
                        <td>
                            <input type="radio" id="male" name="sgender" value="MALE" <%= s.getGender().equals("MALE") ? "checked" : "" %> required/>
                            <label for="male">Male</label>
                            <input type="radio" id="female" name="sgender" value="FEMALE" <%= s.getGender().equals("FEMALE") ? "checked" : "" %> required/>
                            <label for="female">Female</label>
                            <input type="radio" id="others" name="sgender" value="OTHERS" <%= s.getGender().equals("OTHERS") ? "checked" : "" %> required/>
                            <label for="others">Others</label>
                        </td>
                    </tr>
                    <tr>
                        <td><label for="sdob">Enter Date of Birth</label></td>
                        <td><input type="date" id="sdob" name="sdob" value="<%= s.getDateofbirth() %>" required/></td>
                    </tr>
                    <tr>
                        <td><label for="sdept">Select Department</label></td>
                        <td>
                            <select id="sdept" name="sdept" required>
                                <option value="">---Select---</option>
                                <option value="CSE" <%= s.getDepartment().equals("CSE") ? "selected" : "" %>>CSE</option>
                                <option value="CS-IT" <%= s.getDepartment().equals("CS-IT") ? "selected" : "" %>>CS-IT</option>
                                <option value="AIDS" <%= s.getDepartment().equals("AIDS") ? "selected" : "" %>>AIDS</option>
                                <option value="ECE" <%= s.getDepartment().equals("ECE") ? "selected" : "" %>>ECE</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td><label for="slocation">Enter Location</label></td>
                        <td><input type="text" id="slocation" name="slocation" value="<%= s.getLocation() %>" required/></td>
                    </tr>
                    <tr>
                        <td><label for="semail">Enter Email ID</label></td>
                        <td><input type="email" id="semail" name="semail" value="<%= s.getEmail() %>" readonly required/></td>
                    </tr>
                    <tr>
                        <td><label for="spwd">Enter Password</label></td>
                        <td><input type="password" id="spwd" name="spwd" value="<%= s.getPassword() %>" required/></td>
                    </tr>
                    <tr>
                        <td><label for="scontact">Enter Contact</label></td>
                        <td><input type="number" id="scontact" name="scontact" value="<%= s.getContact() %>" required/></td>
                    </tr>
                    <tr>
                        <td colspan="2" class="button-container">
                            <input type="submit" value="Update"/>
                            <input type="reset" value="Clear"/>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </main>
</body>
</html>
