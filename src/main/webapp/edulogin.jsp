<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="mainnavbar.jsp" %>
<!DOCTYPE html>
<html>

<head>
    <title>Educator Login</title>
    <link rel="stylesheet" type="text/css" href="tablestyle.css">
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
            background: linear-gradient(45deg, #42a5f5, #f06292);
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

        // Validate form inputs
        function validateForm(event) {
            const username = document.getElementById('euname').value.trim();
            const password = document.getElementById('epwd').value.trim();

            if (!username || !password) {
                event.preventDefault();
                document.getElementById('errorMessage').textContent = 'All fields are required.';
                return;
            }
            validateCaptcha(event);
        }

        // Initialize CAPTCHA on page load
        window.onload = initializeCaptcha;
    </script>
</head>
<body>
<main>
    <div class="form-container">
        <h3 style="text-align: center;"><u>Educator Login</u></h3>
        <form method="post" action="checkeducatorlogin" onsubmit="validateForm(event)">
            <table>
                <tr>
                    <td><label for="euname">Enter Username</label></td>
                    <td><input type="text" id="euname" name="euname" required/></td>
                </tr>
                <tr>
                    <td><label for="epwd">Enter Password</label></td>
                    <td><input type="password" id="epwd" name="epwd" required/></td>
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
