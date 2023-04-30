<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<title>Login Form</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<style>
          /* Style the body */
body {
	font-family: Arial, Helvetica, sans-serif;
	margin: 0;
}

/* Style the login container */
.login-container {
	background-color: #f2f2f2;
	padding: 20px;
	margin: auto;
	max-width: 500px;
	border-radius: 5px;
}

/* Style the input fields */
input[type=text], input[type=password] {
	width: 100%;
	padding: 10px;
	margin: 5px 0 15px 0;
	display: inline-block;
	border: none;
	background: #f1f1f1;
}

/* Style the login button */
button {
	background-color: #4CAF50;
	color: white;
	padding: 10px 20px;
	border: none;
	cursor: pointer;
	width: 100%;
	border-radius: 5px;
}

/* Add a hover effect for buttons */
button:hover {
	opacity: 0.8;
}

/* Style the form labels */
label {
	font-weight: bold;
	display: block;
	margin-bottom: 5px;
}

/* Add a responsive design */
@media screen and (max-width: 600px) {
	.login-container {
		max-width: 300px;
	}
}


    </style>
    
    
</head>
<body>
	<div class="login-container">
		<center><h2>Login Form</h2></center>
		 
        <hr>
		<form action="studentcontroller" method="post">
			<label for="username"><b>Email</b></label>
			<input type="text" placeholder="Enter Username" name="email" id="email" required>

			<label for="password"><b>Password</b></label>
			<input type="password" placeholder="Enter Password" name="password" id="password" required>

			<button type="submit" value="login" name="action" >Login</button>
			<a href="Registrationpage.jsp"> Registration page </a>
		</form>
	</div>
	
	<!-- <script>

        function validate() {
	var username = document.getElementById("email").value;
	var password = document.getElementById("password").value;
	
	if (username == "admin" && password == "password") {
		alert("Login successful");
	} else {
		alert("Invalid login credentials");
	}
}

    </script> -->
</body>
</html>
