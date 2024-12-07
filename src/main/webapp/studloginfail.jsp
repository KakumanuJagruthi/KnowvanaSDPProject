<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Login Fail</title>
    <style>
        /* Apply the background image to the body */
        body {
            font-family: 'Poppins', sans-serif;
            background-image: url('https://storage.googleapis.com/a1aa/image/HwecPrKPpxQ6byQ1OoqJnvLWeojU054TTAYiWALnG6p6qjrTA.jpg');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            color: white;
            height: 100vh; /* Full viewport height */
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 0;
        }

        /* Centered container */
        .container {
            background-color: rgba(0, 0, 0, 0.7); /* Dark background with some transparency */
            padding: 30px;
            border-radius: 10px;
            text-align: center;
            max-width: 400px;
            width: 100%;
        }

        .message {
            font-size: 1.5rem;
            margin-bottom: 20px;
        }

        .try-again {
            display: inline-block;
            background-color: #F29F58;
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
            text-decoration: none;
            font-size: 1.1rem;
            transition: background-color 0.3s ease;
        }

        .try-again:hover {
            background-color: #D9863B; /* Darken the button on hover */
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="message">
            <c:out value="${message}"></c:out>
        </div>
        <a href="studlogin" class="try-again">Try Again</a>
    </div>
</body>
</html>
