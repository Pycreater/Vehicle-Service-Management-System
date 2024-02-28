<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin Panel - Vehicle Service Management System</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <style>
        html,
        body {
            height: 100%;
            margin: 0;
            font-family: 'Arial', sans-serif;
            background-color: #f8f9fa;
            color: #343a40; /* Dark text color */
        }

        .container-fluid {
            padding-right: 0;
            padding-left: 0;
        }

        .navbar {
            background-color: #007bff; /* Navbar background color */
        }

        .navbar-brand {
            color: #ffffff; /* Navbar brand color */
        }

        .navbar-nav .nav-link {
            color: #000; /* Navbar links color */
        }

        .navbar-nav .nav-link:hover {
            color: #f00; /* Navbar links hover color */
            font-weight: bold;
        }

        .admin-panel {
            background-size: cover;
            background-color: #ffffff; /* Admin panel background color */
            padding: 20px;
            border-radius: 10px; /* Optional: Add rounded corners */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Optional: Add a subtle box shadow */
            margin-top: 20px;
            margin-bottom: 20px; /* Add margin-bottom to reduce empty space */
            text-align: center;
        }

        .admin-panel h2 {
            color: #007bff; /* Heading color */
        }

        .wallpapers {
            background-image: url('images/pexels-cottonbro-studio-4489729.jpg');
            background-size: cover;
            background-position: center;
            height: calc(79vh - 80px); /* 100% viewport height - total header and footer height */
        }

        .footer {
            background-color: #007bff; /* Footer background color */
            color: #ffffff; /* Footer text color */
            padding: 10px 0;
            width: 100%;
        }

        .footer p {
            margin: 0;
        }
    </style>
</head>
<body>

    <div class="container-fluid p-0">
        <nav class="navbar navbar-expand-lg bg-body-tertiary">
            <div class="container-fluid">
                <a class="navbar-brand" href="#"><i class="fas fa-car"></i></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                    <div class="navbar-nav">
                        <a class="nav-link" href="Home">Home</a>
                        <a class="nav-link" href="Report">Service Requests</a>
                        <a class="nav-link" href="UpdateCustomer">Update Customers</a>
                    </div>
                </div>
            </div>
        </nav>
    </div>

    <div class="admin-panel">
        <h2>Welcome to the Admin Panel</h2>
        <!-- Additional content for the admin panel can be added here -->
    </div>

    <div class="wallpapers"></div>

    <div class="footer">
        <div class="container text-center">
            <p>&copy; 2024 Vehicle Management System. All Rights Reserved.</p>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <script src="script.js"></script>
</body>
</html>
