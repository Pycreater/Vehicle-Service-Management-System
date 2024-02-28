<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Vehicle Management System</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
	integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
 <link rel="stylesheet" href="resources/css/style1.css">  
</head>
<body>
	<div class="container-fluid p-0">
		<nav class="navbar navbar-expand-lg bg-body-tertiary">
			<div class="container-fluid">
				<a class="navbar-brand" href="#"><i class="fas fa-car"></i> </a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup"
					aria-controls="navbarNavAltMarkup" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
					<div class="navbar-nav">
						<a class="nav-link active" aria-current="page" href="#">Home</a>
						<a class="nav-link" href="/Z_Java_finale/aboutus">About Us</a> <a
							href="AdminPanel" class="nav-link">Admin</a>
					</div>
				</div>
			</div>
		</nav>

		<nav class="navbar navbar-expand-lg navbar-dark bg-secondary">
			<ul class="navbar-nav me-auto">
				<li class="nav-item"><a href="/Z_Java_finale/MyProfile" class="nav-link">My
						Profile</a></li>
				<li class="nav-item"><a href="CheckStatus"
					class="nav-link">Check Status</a></li>
			</ul>
		</nav>
	</div>

	<div class="send-request">
		<a href="/Z_Java_finale/SendRequest"><button>Send Request</button></a>
	</div>

	<div class="main-body">
		<div class="row">
			<div class="col-md-6">
				<div class="list">
					<h3>We Do Services For</h3>
					<ul>
						<li id="changeOil">Change Oil</li>
						<li id="engineTuneUp">Engine Tune Up</li>
						<li id="overallCheckup">Overall Checkup</li>
						<li id="tireReplacement">Tire Replacement</li>
					</ul>
				</div>
			</div>

			<div class="col-md-6">
				<div class="list2">
					<p id="serviceDescription"></p>
				</div>
			</div>
		</div>
	</div>

	<div class="footer">
		<div class="container text-center">
			<p>&copy; 2024 Vehicle Management System. All Rights Reserved.</p>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
	
	<script src="resources/js/script.js"></script>  
</body>
</html>
