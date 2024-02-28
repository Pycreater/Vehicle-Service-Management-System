<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Status Page</title>
<style>
body {
	text-align: center;
}

table {
	border-collapse: collapse;
	width: 50%;
	margin: 0 auto;
}

th, td {
	border: 1px solid #dddddd;
	text-align: left;
	padding: 8px;
}

th {
	background-color: #f2f2f2;
}
</style>
</head>
<body>

	<h2>Status Page</h2>

	<%-- Display customer details --%>
	<h3>Customer Details</h3>
	<table>
		<tr>
			<th>Attribute</th>
			<th>Value</th>
		</tr>
		<tr>
			<td>Name</td>
			<td>${customer.customerName}</td>
		</tr>
		<tr>
			<td>Contact</td>
			<td>${customer.customerContact}</td>
		</tr>
		<tr>
			<td>Email</td>
			<td>${customer.customerEmail}</td>
		</tr>
		<tr>
			<td>Address</td>
			<td>${customer.address}</td>
		</tr>
		<tr>
			<td>Request Date</td>
			<td>${customer.requestDate}</td>
		</tr>
		<tr>
			<td>Status</td>
			<td>${customer.status}</td>
		</tr>
	</table>

	<%-- Display vehicle details --%>
	<h3>Vehicle Details</h3>
	<table>
		<tr>
			<th>Attribute</th>
			<th>Value</th>
		</tr>
		<tr>
			<td>Type</td>
			<td>${vehicle.vehicleType}</td>
		</tr>
		<tr>
			<td>Name</td>
			<td>${vehicle.vehicleName}</td>
		</tr>
		<tr>
			<td>Registration Number</td>
			<td>${vehicle.registrationNumber}</td>
		</tr>
		<tr>
			<td>Services</td>
			<td>${vehicle.services}</td>
		</tr>
	</table>
	<br>
	<br>
	<a href="/Z_Java_finale/Home"><button>Go To Main Page</button></a>
</body>
</html>
