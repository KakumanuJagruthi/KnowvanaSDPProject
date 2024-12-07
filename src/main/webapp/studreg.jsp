<!DOCTYPE html>
<html>
<head>
    <title>Registration</title>
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
        color: white; /* Makes text stand out */
    }
    </style>
    <script>
        // Password validation rules
        function validatePassword() {
            const password = document.getElementById('spwd').value;
            const errorElement = document.getElementById('passwordError');
            const regex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@#$%^&*])[A-Za-z\d@#$%^&*]{8,16}$/;

            if (!regex.test(password)) {
                errorElement.textContent = "Password must be 8-16 characters, include an uppercase letter, a number, and a special character.";
                return false;
            }
            errorElement.textContent = ""; // Clear error message
            return true;
        }

        // Contact number validation
        function validateContact() {
            const contact = document.getElementById('scontact').value;
            const errorElement = document.getElementById('contactError');
            const regex = /^[0-9]{10}$/;

            if (!regex.test(contact)) {
                errorElement.textContent = "Contact number must be 10 digits.";
                return false;
            }
            errorElement.textContent = ""; // Clear error message
            return true;
        }

        // Form validation
        function validateForm(event) {
            const isPasswordValid = validatePassword();
            const isContactValid = validateContact();

            if (!isPasswordValid || !isContactValid) {
                event.preventDefault();
            }
        }
    </script>
</head>
<body>
    <%@include file="mainnavbar.jsp" %>

    <main>
        <div class="form-container">
            <h3 style="text-align: center;"><u>Student Registration</u></h3>
            <form method="post" action="insertstud" onsubmit="validateForm(event)">
                <table>
                    <tr>
                        <td><label for="susername">Enter UserName</label></td>
                        <td><input type="text" id="susername" name="susername" required/></td>
                    </tr>
                    <tr>
                        <td><label for="sname">Enter Name</label></td>
                        <td><input type="text" id="sname" name="sname" required/></td>
                    </tr>
                    <tr>
                        <td><label>Select Gender</label></td>
                        <td>
                            <input type="radio" id="male" name="sgender" value="MALE" required/>
                            <label for="male">Male</label>
                            <input type="radio" id="female" name="sgender" value="FEMALE" required/>
                            <label for="female">Female</label>
                            <input type="radio" id="others" name="sgender" value="OTHERS" required/>
                            <label for="others">Others</label>
                        </td>
                    </tr>
                    <tr>
                        <td><label for="sdob">Enter Date of Birth</label></td>
                        <td><input type="date" id="sdob" name="sdob" required/></td>
                    </tr>
                    <tr>
                        <td><label for="sdept">Select Department</label></td>
                        <td>
                            <select id="sdept" name="sdept" required>
                                <option value="">---Select---</option>
                                <option value="CSE">CSE</option>
                                <option value="CS-IT">CS-IT</option>
                                <option value="AIDS">AIDS</option>
                                <option value="ECE">ECE</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td><label for="slocation">Enter Location</label></td>
                        <td><input type="text" id="slocation" name="slocation" required/></td>
                    </tr>
                    <tr>
                        <td><label for="semail">Enter Email ID</label></td>
                        <td><input type="email" id="semail" name="semail" required/></td>
                    </tr>
                    <tr>
                        <td><label for="spwd">Enter Password</label></td>
                        <td>
                            <input type="password" id="spwd" name="spwd" oninput="validatePassword()" required/>
                            <div id="passwordError" class="error-message"></div>
                        </td>
                    </tr>
                    <tr>
                        <td><label for="scontact">Enter Contact</label></td>
                        <td>
                            <input type="number" id="scontact" name="scontact" oninput="validateContact()" required/>
                            <div id="contactError" class="error-message"></div>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="button-container">
                            <input type="submit" value="Register"/>
                            <input type="reset" value="Clear"/>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </main>
</body>
</html>
