<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Feedback Form</title>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-image: url('https://storage.googleapis.com/a1aa/image/HwecPrKPpxQ6byQ1OoqJnvLWeojU054TTAYiWALnG6p6qjrTA.jpg');
            background-size: cover; /* Ensures the image covers the entire screen */
            background-position: center; /* Keeps the image centered */
            background-attachment: fixed; /* Keeps the background fixed while scrolling */
            color: #F29F58; /* Makes text stand out */
            text-align: center;
        }

        .form-container {
            max-width: 600px;
            margin: auto;
            background-color: rgba(0, 0, 0, 0.7); /* Semi-transparent background for readability */
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: #F29F58;
        }

        label {
            font-weight: bold;
            color: #F29F58;
        }

        input[type="text"],
        input[type="email"],
        input[type="number"],
        input[type="date"],
        textarea {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            margin-bottom: 15px;
            border-radius: 5px;
            border: 1px solid #ccc;
            font-size: 16px;
        }

        input[type="submit"],
        input[type="reset"] {
            background-color: #F29F58;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }

        input[type="submit"]:hover,
        input[type="reset"]:hover {
            background-color: #D9872A;
        }

        .error-message {
            color: red;
            font-size: 0.9em;
            margin-top: 5px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group input,
        .form-group textarea {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            margin-bottom: 15px;
            border-radius: 5px;
            border: 1px solid #ccc;
            font-size: 16px;
        }

        .form-group textarea {
            resize: vertical;
            height: 100px;
        }

    </style>
</head>
<body>
  <%@include file="mainnavbar.jsp" %>

    <main>
<h2>Submit Your Feedback</h2>

<div class="form-container">
    <form action="submitfeedback" method="POST" onsubmit="validateForm(event)">
        <div class="form-group">
            <label for="name">Your Name:</label><br>
            <input type="text" id="name" name="name" required><br>
        </div>

        <div class="form-group">
            <label for="email">Your Email:</label><br>
            <input type="email" id="email" name="email" required><br>
        </div>

        <div class="form-group">
            <label for="courseId">Course ID:</label><br>
            <input type="number" id="courseId" name="courseId" required><br>
        </div>

        <div class="form-group">
            <label for="rating">Rating (1-5):</label><br>
            <input type="number" id="rating" name="rating" min="1" max="5" required><br>
        </div>

        <div class="form-group">
            <label for="feedbackText">Feedback:</label><br>
            <textarea id="feedbackText" name="feedbackText" rows="4" required></textarea><br>
        </div>

        <div class="form-group">
            <input type="submit" value="Submit Feedback">
            <input type="reset" value="Clear">
        </div>
    </form>
</div>
</main>

</body>
</html>
