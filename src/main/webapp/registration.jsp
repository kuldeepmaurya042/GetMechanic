<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sign Up Form</title>
<link rel="icon" type="image/x-icon" href="assets/favicon.svg" />
<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<jsp:include page="header.jsp"/>

	<div class="main">

		<!-- Sign up form -->
		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">Sign up</h2>
					
						<form method="post" action="<%=request.getContextPath()%>/mainController?action=registerSubmit" class="register-form"
							id="register-form">
							<div class="form-group">
								<label for="name"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="name" id="name" placeholder="Your Name" />
							</div>
							<div class="form-group">
								<label for="email"><i class="zmdi zmdi-email"></i></label> 
								<input onblur="verifyEmail()" type="email" name="email" id="email" placeholder="Your Email" />
								<span id="msg4" style="color:red;"></span>
							</div>
							<div class="form-group">
								<label for="pass"><i class="zmdi zmdi-lock"></i></label> 
								<input onblur="verifyPass()" type="password" name="pass" id="pass" placeholder="Password" />
								<span id="msg1" style="color:red;"></span>
							</div>
							<div class="form-group">
								<label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
								<input onblur="verifyRepass()" type="password" name="re_pass" id="re_pass"
									placeholder="Repeat your password" /><span id="msg2" style="color:red;"></span>
							</div>
							<div class="form-group">
								<label for="contact"><i class="zmdi zmdi-dialpad"></i></label>
								<input onblur="verifyContact()" type="text" name="contact" id="contact"
									placeholder="Contact no" /><span id="msg3" style="color:red;"></span>
							</div>
							<div class="form-group">
								<label for="loginType"><i class="zmdi zmdi-accounts"></i></label>
									<div style="margin-left:25px;">
									 Select User Type :
									<select name="registerType" id="registerType" style="padding:2px;" required>
										<option value="">--SELECT--</option>
									    <option value="customer">Customer Register</option>
									    <option value="mechanic">Mechanic Register</option>									  
									</select>
									</div>
									<hr>
							</div>
							<div class="form-group">
								<input type="checkbox" name="agree-term" id="agree-term"
									class="agree-term" /> <label for="agree-term"
									class="label-agree-term"><span><span></span></span>
									I  agree all statements in <a href="#" class="term-service">Terms
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
							<img src="images/signup-image.jpg" alt="sing up image">
						</figure>
						<h3 style="margin-left:70px;font-size:25px;">Already Registered ?</h3>
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
									    
									    
									    
									    
									    
									    