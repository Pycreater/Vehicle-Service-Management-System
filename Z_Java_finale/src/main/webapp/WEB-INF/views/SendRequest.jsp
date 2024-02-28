<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Send Request</title>
<link rel="stylesheet" href="resources/css/SendRequest.css">

</head>
<body>
	<form:form action="/Z_Java_finale/Request" method="POST" modelAttribute="vehicle">
        Fill the Service Request Form <br>
		<br>

        Vehicle Type 
        <select name="vehicleType" id="">
			<option value="2wheeler">2 Wheeler</option>
			<option value="4wheeler">4 Wheeler</option>
		</select>
		<br>

        Customer Full name
        <input type="text" name="customerName" required>
		<br>

        Customer Contact
        <input type="text" name="customerContact" required>
		<br>

        Customer Email
        <input type="email" name="customerEmail" required>
		<br>

        Address 
        <input type="text" name="address" required>
		<br>

        Vehicle Name 
        <input type="text" name="vehicleName" required>
		<br>

        Vehicle Registration Number
        <input type="text" name="registrationNumber" required>
		<br>

        Services
        <select name="services" id="">
			<option value="changeOil">Change Oil</option>
			<option value="tireReplacement">Tire Replacement</option>
			<option value="overallCheckup">Overall CheckUp</option>
			<option value="engineTuneUp">Engine Tune Up</option>
		</select>
		<br>
		<br>

		<input type="submit" value="Submit">
		<input type="reset" value="Clear">
		</form:form>
</body>
</html>
