<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Student</title>
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
            color: white;
        }

        table {
            width: 80%;
            max-width: 120px;
            margin: 20px auto;
            border-collapse: collapse;
            table-layout: auto;
            background: rgba(0, 0, 0, 0.6);
            padding: 20px;
            border-radius: 10px;
            margin-bottom: 20px;
            color: #F29F58;
        }

        table, th, td {
            border: 4px solid #F29F58;
        }

        th, td {
            padding: 10px;
            text-align: center;
            word-wrap: break-word;
        }

        th {
            background-color: #F29F58;
            color: black;
        }

        a {
            color: #F29F58;
            text-decoration: none;
        }

        a:hover {
            color: white;
            background-color: #F29F58;
            padding: 5px;
            border-radius: 5px;
        }

        /* Style the trash icon */
        .trash-icon {
            color: #F29F58;
            font-size: 18px;
            margin-left: 10px;
            cursor: pointer;
        }

        .trash-icon:hover {
            color: red; /* Red color when hovered to signify deletion */
        }
    </style>
</head>
<body>
    <%@include file="edunavbar.jsp" %>
    <h3 style="text-align: center;"><u>Delete Student</u></h3>
    <table>
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>GENDER</th>
            <th>DATE OF BIRTH</th>
            <th>DEPARTMENT</th>
            <th>LOCATION</th>
            <th>EMAIL</th>
            <th>CONTACT</th>
            <th>STATUS</th>
            <th>ACTION</th>
        </tr>
        <c:forEach items="${studlist}" var="stud">
            <tr>
                <td><c:out value="${stud.id}"/></td>
                <td><c:out value="${stud.name}"/></td>
                <td><c:out value="${stud.gender}"/></td>
                <td><c:out value="${stud.dateofbirth}"/></td>
                <td><c:out value="${stud.department}"/></td>
                <td><c:out value="${stud.location}"/></td>
                <td><c:out value="${stud.email}"/></td>
                <td><c:out value="${stud.contact}"/></td>
                <td><c:out value="${stud.status}"/></td>
                <td>
<a href='<c:url value="delete?id=${stud.id}"></c:url>' onclick="return confirm('Are you sure you want to delete this student?');">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
