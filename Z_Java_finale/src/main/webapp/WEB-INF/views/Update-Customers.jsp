<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="False"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Service Requests</title>
<style>
h2 {
	text-align: center;
}

table {
	border-collapse: collapse;
	width: 100%;
}

th, td {
	border: 1px solid black;
	padding: 8px;
	text-align: left;
}

th {
	background-color: #f2f2f2;
}

button {
	background-color: #3498db; /* Default button color */
	color: white;
	padding: 10px 15px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	font-size: 16px;
	margin-bottom: 10px;
}

button:hover {
	background-color: #2980b9; /* Hover color */
}

button.related-to-table {
	background-color: #f2f2f2; /* Default color related to table header */
}
</style>
</head>
<body>
	<div class="service-requests">
		<h2>Service Requests</h2>
		<table>
			<thead>
				<tr>
					<th>Customer Name</th>
					<th>Contact</th>
					<th>Email</th>
					<th>Address</th>
					<th>Vehicle Type</th>
					<th>Vehicle Name</th>
					<th>Registration Number</th>
					<th>Services</th>
					<th>Request Date</th>
					<th>Status</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="customer" items="${customers}" varStatus="status">
					<tr>
						<td>${customer.customerName}</td>
						<td>${customer.customerContact}</td>
						<td>${customer.customerEmail}</td>
						<td>${customer.address}</td>
						<td>${vehicles[status.index].vehicleType}</td>
						<td>${vehicles[status.index].vehicleName}</td>
						<td>${vehicles[status.index].registrationNumber}</td>
						<td>${vehicles[status.index].services}</td>
						<td>${customer.requestDate}</td>
						<td>${customer.status}</td>
						<td>
                            <form action="/Z_Java_finale/updateCustomerStatus" method="GET">
                                <input type="hidden" name="customerId" value="${customer.customerId}">
                                <button type="submit">Update</button>
                            </form>
                        </td>
					</tr>
				</c:forEach>

			</tbody>
		</table>
	</div>

	
</body>
</html>
