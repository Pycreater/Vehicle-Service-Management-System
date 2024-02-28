<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
   
    <title>Success</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            flex-direction: column;
        }

        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 10px; 
        }

        p {
            text-align: center;
            font-size: 16px;
            color: #555;
            margin-bottom: 30px;
        }

        a {
            display: block;
            text-align: center;
            text-decoration: none;
        }

        button {
            background-color: #4caf50;
            color: #fff;
            padding: 12px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <h1>Form Submitted Successfully</h1>
    <p>Thank you for submitting the service request. Our team will get in touch with you soon.</p>
    
    <a href="Home"><button>Go Back to Main Page</button></a>
</body>
</html>
