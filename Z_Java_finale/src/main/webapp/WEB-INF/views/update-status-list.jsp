<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<form action="/Z_Java_finale/update_customer_status_handler" method="post">
    <label for="new_status">Update Status:</label>
    <select name="new_status" id="new_status">
        <option value="Pending">Pending</option>
        <option value="In Progress">In Progress</option>
        <option value="Completed">Completed</option>
    </select>
    <input type="hidden" name="customerId" value="${customer.customerId}">
    <input type="submit" value="Update Status">
</form>

</body>
</html>