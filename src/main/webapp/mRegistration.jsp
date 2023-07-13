<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="project.getMechanic.customerEntity"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sign Up Form</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<jsp:include page="header.jsp" />

	<%
	customerEntity e = (customerEntity) request.getAttribute("details");
	%>

	<div class="main">

		<!-- Sign up form -->
		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">Mechanic Sign up</h2>

						<form method="post"
							action="<%=request.getContextPath()%>/mainController?action=registerSubmit"
							class="register-form" id="register-form">
							<div class="form-group">
								<label for="name"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="name" id="name" value="<%=e.getName()%>"
									required />
							</div>
							<div class="form-group">
								<label for="email"><i class="zmdi zmdi-email"></i></label> <input
									onblur="verifyEmail()" type="email" name="email" id="email"
									value="<%=e.getEmail()%>" required /> <span id="msg4"
									style="color: red;"></span>
							</div>
							<div class="form-group">
								<label for="pass"><i class="zmdi zmdi-lock"></i></label> <input
									onblur="verifyPass()" type="password" name="pass" id="pass"
									value="<%=e.getPassword()%>" required /> <span id="msg1"
									style="color: red;"></span>
							</div>
							<div class="form-group">
								<label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
								<input onblur="verifyRepass()" type="password" name="re_pass"
									id="re_pass" value="<%=e.getPassword()%>" required /><span
									id="msg2" style="color: red;"></span>
							</div>
							<div class="form-group">
								<label for="contact"><i class="zmdi zmdi-dialpad"></i></label> <input
									onblur="verifyContact()" type="text" name="contact"
									id="contact" value="<%=e.getContact()%>" required /><span
									id="msg3" style="color: red;"></span>
							</div>
							<div class="form-group">
								<label for="Shop Name"><i
									class="zmdi zmdi-store material-icons-name"></i></label> <input
									type="text" name="shopName" id="shopName"
									placeholder="Your Shop Name" required />
							</div>
							<div class="form-group">
								<label for="Shop Address"><i
									class="zmdi zmdi-pin material-icons-name"></i></label> <input
									type="text" name="shopAddress" id="shopAddress"
									placeholder="Your Shop Address" required />
							</div>
							<div class="form-group">
								<div class="row">
									<div class="col">
										<div class="form-outline">
											<input type="text" id="city" class="form-control" name="city"
												placeholder="City" /> <label class="form-label" for="city"><i
												class="zmdi zmdi-city"></i></label>
										</div>
									</div>
									<div class="col">
										<div class="form-outline">
											<input type="text" id="zip" class="form-control" name="zip"
												placeholder="Area Code" /> <label class="form-label"
												for="zip"><i class="zmdi zmdi-code"></i></label>
										</div>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="Aadhar No."><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="aadharNo" id="aadharNo"
									placeholder="Your Aadhar Number" required />
							</div>

							<div>
								<input type="hidden" name="registerType" value="finalMechanic">
							</div>
							<div class="form-group">
								<input type="checkbox" name="agree-term" id="agree-term"
									class="agree-term" /> <label for="agree-term"
									class="label-agree-term"><span><span></span></span> I
									agree all statements in <a href="#" class="term-service">Terms
										of service</a></label>
							</div>
							<div class="form-group form-button">
								<input type="submit" name="signup" id="signup"
									class="form-submit" value="Register" />
							</div>
						</form>
					</div>
					<div class="signup-image">
						<figure>
							<img src="images/mSignup-image.png" alt="sign up image">
						</figure>
						<h3 style="margin-left: 70px; font-size: 25px;">Already
							Registered ?</h3>
						<a href="<%=request.getContextPath()%>/mainController?action=login" 
						class="signup-image-link">Click Here To Login</a>
					</div>
				</div>
			</div>
		</section>


	</div>
	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>

</body>
</html>





