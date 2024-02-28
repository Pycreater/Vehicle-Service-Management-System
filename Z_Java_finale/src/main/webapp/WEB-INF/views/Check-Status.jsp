<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="False"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Vehicle Status</title>
<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	background-color: #f4f4f4;
}

h2 {
	text-align: center;
	color: #333;
}

.container {
	width: 80%;
	margin: 0 auto;
	padding: 20px;
	background-color: #fff;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.check-status input[type="text"] {
	width: 35%;
	padding: 8px;
	margin-bottom: 10px;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

.check-status button {
	background-color: #4CAF50;
	color: white;
	padding: 10px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	width: 100%;
}

.check-status button:hover {
	background-color: #45a049;
}

.go-to-main {
	text-align: center;
	margin-top: 20px;
}

.go-to-main button {
	background-color: #008CBA;
	color: white;
	padding: 10px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

.go-to-main button:hover {
	background-color: #0073e6;
}
</style>
</head>
<body>

	<h2>My Status</h2>

	<div>
		<form:form action="/Z_Java_finale/status" method="post"
			modelAttribute="status">
			<div class="check-status">
				Enter Your Name <input type="text" name="customerName" required><br>
				Vehicle Registration Number <input type="text"
					name="registrationNumber" required><br>
			</div>

			<button type="submit">Check Status</button>
		</form:form>

	</div>

	<br>
	<br>
	<a href="/Z_Java_finale/Home"><button>Go To Main Page</button></a>
</body>
</html>
