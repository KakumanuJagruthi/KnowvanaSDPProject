<!DOCTYPE html>
<html>
<head>
    <title>Create Course</title>
    <link rel="stylesheet" type="text/css" href="tablestyle.css">
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
    <script>
        // Form validation (if necessary)
        function validateForm(event) {
            // You can add any custom validation here if needed
            // For now, this just prevents form submission if a field is missing
        }
    </script>
</head>
<body>
    <%@include file="edunavbar.jsp" %>

    <main>
        <div class="form-container">
            <h3><u>Create Course</u></h3>
            <form method="post" action="insertcourse" enctype="multipart/form-data" onsubmit="validateForm(event)">
                <table>
                    <tr>
                        <td><label for="category">Course Category</label></td>
                        <td><input type="text" id="category" name="category" required /></td>
                    </tr>
                    <tr>
                        <td><label for="name">Course Name</label></td>
                        <td><input type="text" id="name" name="name" required /></td>
                    </tr>
                    <tr>
                        <td><label for="description">Course Description</label></td>
                        <td><textarea id="description" name="description" rows="4" required></textarea></td>
                    </tr>
                    <tr>
                        <td><label for="cost">Course Cost</label></td>
                        <td><input type="number" id="cost" name="cost" step="0.01" required /></td>
                    </tr>
                    <tr>
                        <td><label for="url">Course URL</label></td>
                        <td><input type="url" id="url" name="url" required /></td>
                    </tr>
                    <tr>
                        <td><label for="image">Course Image (JPG/PNG)</label></td>
                        <td><input type="file" id="image" name="image" accept="image/*" required /></td>
                    </tr>
                    <tr>
                        <td colspan="2" class="button-container">
                            <input type="submit" value="Create Course"/>
                            <input type="reset" value="Clear"/>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </main>
</body>
</html>
