<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Registration Page </title>
	<link rel="stylesheet" type="text/css" href="style.css">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        * {
	box-sizing: border-box;
	margin: 0;
	padding: 0;
}

body {
	background-color: #f2f2f2;
	font-family: Arial, sans-serif;
}

.form-container {
	max-width: 600px;
	margin: 20px auto;
	background-color: #fff;
	padding: 20px;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
}

h2 {
	text-align: center;
	margin-bottom: 20px;
}

form {
	display: flex;
	flex-direction: column;
}

label {
	margin-top: 10px;
	margin-bottom: 5px;
	font-weight: bold;
}

input {
	padding: 10px;
	border-radius: 5px;
	border: 1px solid #ccc;
	margin-bottom: 10px;
}

button[type="submit"] {
	background-color: #4CAF50;
	color: #fff;
	padding: 10px;
	border-radius: 5px;
	border: none;
	cursor: pointer;
	margin-top: 20px;
}

button[type="submit"]:hover {
	background-color: #3e8e41;
}

@media screen and (max-width: 600px) {
	.form-container {
		max-width: 100%;
	}
}

    </style>
</head>
<body>
	<div class="form-container">
		
		<h2>Registration Form </h2>
		
		<form id="update-form" action="studentcontroller" method="post">
			<label for="name">Name:</label>
			<input type="text" id="name" name="name" required>
			<label for="Contactno">Contact No:</label>
			<input type="text" id="contactno" name="contactno" required>			
			<label for="email">Email:</label>
			<input type="email" id="email" name="email" required>
			<label for="password"> Password:</label>
			<input type="password" id="new-password" name="password">
			<label for="confirm-password">Confirm  Password:</label>
			<input type="password" id="confirm-password" name="confirmpass">
			<button type="submit" value="signup" name ="action" onclick="addEventListener">SignUp</button>
		    <a href="Loginpage.jsp"> Login Page </a>
		
		</form>
	</div>

<!-- 	<script>
        const form = document.getElementById('update-form');
const nameInput = document.getElementById('name');
const emailInput = document.getElementById('email');
const passwordInput = document.getElementById('password');
const newPasswordInput = document.getElementById('new-password');
const confirmPasswordInput = document.getElementById('confirm-password');

form.addEventListener('submit', (event) => {
	event.preventDefault();

	// Perform form validation here
	// ...

	// If validation passes, perform update logic here
	// ...
});

    </script> -->
</body>
</html>
