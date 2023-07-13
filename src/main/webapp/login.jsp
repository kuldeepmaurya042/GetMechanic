<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sign in</title>
<link rel="icon" type="image/x-icon" href="assets/favicon.svg" />
<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<jsp:include page="header.jsp"/>
	<div class="main" >
		<!-- Sing in  Form -->
		<section class="sign-in">
			<div class="container">
				<div class="signin-content">
					<div class="signin-image">
						<figure>
							<img src="images/signin-image.jpg" alt="sing up image">
						</figure>
						<h3 style="margin-left:122px;font-size:20px;">Not Registered ?</h3>
						<a href="<%=request.getContextPath()%>/mainController?action=register" class="signup-image-link">Click Here to Register YourSelf</a>
					</div>

					<div class="signin-form">
						<h2 class="form-title">Sign in</h2>
						<form method="post" action="<%=request.getContextPath()%>/mainController?action=loginSubmit" class="register-form"
							id="login-form">
							<div class="form-group">
								<label for="username"><i class="zmdi zmdi-account material-icons-name"></i></label> 
									<input type="text" name="username" id="username"
									placeholder="Username" required/>
							</div>
							<div class="form-group">
								<label for="password"><i class="zmdi zmdi-lock"></i></label> 
								<input type="password" name="password" id="password"
									placeholder="Password" required/>
							</div>
							<div class="form-group">
								<label for="loginType"><i class="zmdi zmdi-accounts"></i></label>
									<div style="margin-left:25px;">
									 Select User Type :
									<select name="loginType" id="loginType" style="padding:2px;" required>
										<option value="">--SELECT--</option>
									    <option value="customer">Customer Login</option>
									    <option value="mechanic">Mechanic Login</option>									  
									</select>
									</div>
									<hr>
							</div>
							<div class="form-group">
								<input type="checkbox" name="remember-me" id="remember-me"
									class="agree-term" /> <label for="remember-me"
									class="label-agree-term"><span><span></span></span>Remember
									me</label>
							</div>
							<div class="form-group form-button" style="margin-left:67%;margin-top:-12%;">
								<a href="<%=request.getContextPath()%>/mainController?action=forgotPassword">Forgot password ?</a>
							</div>
							<div class="form-group form-button">
								<input type="submit" name="signin" id="signin"
									class="form-submit" value="Log in" />
							</div>
						</form>
						
						
						<div class="social-login">
							<span class="social-label">Or login with</span>
							<ul class="socials">
								<li><a href="#"><i
										class="display-flex-center zmdi zmdi-facebook"></i></a></li>
				
								<li><a href="#"><i
										class="display-flex-center zmdi zmdi-google"></i></a></li>
							</ul>
						</div>
					 	
						
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
						