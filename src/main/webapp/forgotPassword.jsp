<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reset Password</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.svg" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/index-styles.css" rel="stylesheet" />

</head>
<body>
	<div class="container">
	<jsp:include page="header.jsp" />
	</div>
	<div class="container" style="margin-top:12%;">
		<div class="d-flex justify-content-center"
			style="margin-left: auto; margin-right: auto">
			<div style="border: 2px solid black; padding: 2%;">
				<form method="post"
					action="<%=request.getContextPath()%>/customerController?action=forgotPassword">
					<div class="text-center">
						<h3>
							<i class="fa fa-lock fa-3x"></i>
						</h3>
					</div>
					<h2>Forgot Password ?</h2>
					<br>
					<div class="form-group">
						<label for="email">Enter Your Email Id :-</label> <input
							type="text" name="email" class="form-control" id="email"
							placeholder="Enter Email Address">
					</div>
					<br>
					<div class="d-flex align-items-center justify-content-center">
						<input type="submit" id="save" value="Reset Password"
							class="btn btn-primary mt-3">
					</div>
					<br>
					<div>
						Remember Your Password ? <a
							href="<%=request.getContextPath()%>/mainController?action=login">
							LOG IN </a> Here.

					</div>
				</form>
			</div>
		</div>
	</div>

	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>

</body>
</html>
















