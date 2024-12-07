 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="mainnavbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student Login</title>
    <link rel="stylesheet" href="tablestyle.css">
    <style>
    body {
        font-family: 'Poppins', sans-serif;
        background-image: url('https://storage.googleapis.com/a1aa/image/HwecPrKPpxQ6byQ1OoqJnvLWeojU054TTAYiWALnG6p6qjrTA.jpg');
        background-size: cover; /* Ensures the image covers the entire screen */
        background-position: center; /* Keeps the image centered */
        background-attachment: fixed; /* Keeps the background fixed while scrolling */
        color: white; /* Makes text stand out */
    }
        .captcha-container {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-top: 10px;
        }
        .captcha-text {
            font-weight: bold;
            background: linear-gradient(45deg, #f3ec78, #af4261);
            color: transparent;
            -webkit-background-clip: text;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
            padding: 8px 16px;
            border-radius: 4px;
            cursor: pointer;
            user-select: none;
        }
        .error-message {
            color: red;
            text-align: center;
            margin-top: 10px;
        }
    </style>
    <script>
        // Generate a random CAPTCHA
        function generateCaptcha() {
            const chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
            return Array.from({ length: 6 }, () =>
                chars.charAt(Math.floor(Math.random() * chars.length))
            ).join('');
        }

        // Initialize CAPTCHA
        function initializeCaptcha() {
            const captchaText = document.getElementById('captchaText');
            captchaText.textContent = generateCaptcha();
        }

        // Refresh CAPTCHA when clicked
        function refreshCaptcha() {
            initializeCaptcha();
            document.getElementById('captchaInput').value = '';
        }

        // Validate CAPTCHA on form submission
        function validateCaptcha(event) {
            const captchaInput = document.getElementById('captchaInput').value;
            const captchaText = document.getElementById('captchaText').textContent;

            if (captchaInput.toLowerCase() !== captchaText.toLowerCase()) {
                event.preventDefault();
                document.getElementById('errorMessage').textContent = 'Invalid CAPTCHA. Please try again.';
                refreshCaptcha();
            }
        }

        // Validate Password
        function validatePassword(event) {
            const password = document.getElementById('spwd').value;
            const errorMessage = document.getElementById('errorMessage');
            const passwordRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@#$&*])[A-Za-z\d@#$&*]{8,16}$/;

            if (!passwordRegex.test(password)) {
                event.preventDefault();
                errorMessage.textContent = `
                    Password must be 8-16 characters long, include:
                    - At least one uppercase letter
                    - At least one lowercase letter
                    - At least one digit
                    - At least one special character (@, #, $, &, *)
                    - No spaces
                `;
                return false;
            }

            errorMessage.textContent = ''; // Clear any previous error message
            return true;
        }

        // Bind both CAPTCHA and password validation to form submission
        function validateForm(event) {
            validateCaptcha(event);
            validatePassword(event);
        }

        // Initialize CAPTCHA on page load
        window.onload = initializeCaptcha;
    </script>
</head>
<body>
<main>
    <div class="form-container">
        <h3 style="text-align: center;"><u>Student Login</u></h3>
        <form method="post" action="checkstudlogin" onsubmit="validateForm(event)">
            <table>
                <tr>
                    <td><label for="susername">Enter Username</label></td>
                    <td><input type="text" id="susername" name="susername" required/></td>
                </tr>
                <tr>
                    <td><label for="spwd">Enter Password</label></td>
                    <td><input type="password" id="spwd" name="spwd" required/></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <div class="captcha-container">
                            <!-- Captcha text -->
                            <span id="captchaText" class="captcha-text" onclick="refreshCaptcha()"></span>
                            <!-- Captcha input -->
                            <input
                                type="text"
                                id="captchaInput"
                                name="captchaInput"
                                placeholder="Enter CAPTCHA"
                                required
                                style="margin-left: 10px; width: 50%;"
                            />
                        </div>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Login"/>
                        <input type="reset" value="Clear"/>
                    </td>
                </tr>
            </table>
        </form>
        <div id="errorMessage" class="error-message"></div>
    </div>
</main>
</body>
</html>
