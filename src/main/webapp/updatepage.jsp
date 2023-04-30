<%@page import="com.bean.student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Update Profile and Password Form</title>
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
<%
		student d = null;
		if (session != null) {
			d = (student) session.getAttribute("abc");
		} else {
			response.sendRedirect("Loginpage.jsp");
		}
	%>
	<div class="form-container">
		<h2>Update Profile and Password</h2>
		<form id="update-form" action="studentcontroller" method="post">
		    <input type="hidden" id="id" name="id" value=<%=d.getId() %> required>
			 
			<label for="name">Name:</label>
			<input type="text" id="name" name="name" value=<%=d.getName() %> required>
			<label for="contactno">ContactNo:</label>
			<input type="text" id="contact" name="contactno" value=<%=d.getContactno() %> required>	
			<label for="email">Email:</label>
			<input type="email" id="email" name="email" value=<%=d.getEmail() %>  required>
			<label for="password">Current Password:</label>
			<input type="text" id="password" name="password" value=<%=d.getPassword() %> required>
			<label for="confirm-password">Confirm New Password:</label>
			<input type="password" id="confirm-password" name="confirmpass" value=<%=d.getConfirmpass() %>  >
			<button type="submit" value="update" name="action" >Update</button>
			
		</form>
	</div>

	<!-- <script>
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
