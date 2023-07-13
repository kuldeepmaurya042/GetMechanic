
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Get Mechanic</title>
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
<body id="page-top">
	<!-- Navigation-->
	<nav
		class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand" href="#page-top">Get Mechanic</a>
			<button
				class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded"
				type="button" data-bs-toggle="collapse"
				data-bs-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				Menu <i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ms-auto">
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="#services">Services</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="#about">About</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="#contact">Contact</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="<%=request.getContextPath()%>/mainController?action=login">Login/Register</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="">Store</a></li>
					
				</ul>
			</div>
		</div>
	</nav>
	<!-- Masthead-->
	<header class="masthead bg-primary text-white text-center">
		<div class="container d-flex align-items-center flex-column">
			<!-- Masthead Avatar Image-->
			<img class="masthead-avatar mb-4" src="assets/img/avataaars.svg"
				alt="..." />
			<!-- Masthead Heading-->
			<h1 class="masthead-heading text-uppercase mb-0">Welcome To Get Mechanic Portal</h1>
			<!-- Icon Divider-->
			<div class="divider-custom divider-light">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- Masthead Subheading-->
			<p class="masthead-subheading font-weight-light mb-0">Repairing - Servicing - Modification</p>
		</div>
	</header>
	<!-- Services Section-->
	<section class="page-section services" id="services">
		<div class="container">
			<!-- Services Section Heading-->
			<h2
				class="page-section-heading text-center text-uppercase text-secondary mb-0">Services</h2>
			<!-- Icon Divider-->
			<div class="divider-custom">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- Services Grid Items-->
			<div class="row justify-content-center">
				<!-- Services Item 1-->
				<div class="col-md-6 col-lg-4 mb-5" >
					<div class="services-item mx-auto" data-bs-toggle="modal"
						data-bs-target="#servicesModal1" style="border: 2px #EFEFEE solid;">
						<div
							class="services-item-caption d-flex align-items-center justify-content-center h-100 w-100">
						</div>
						<h3 style="text-decoration: underline;color:#002db3; margin-left:60px;">Check Progress</h3>
						<img class="img-fluid" src="assets/img/services/progress.png"
							alt="..." />
					</div>
				</div>
				<!-- Services Item 2-->
				<div class="col-md-6 col-lg-4 mb-5">
					<div class="services-item mx-auto" data-bs-toggle="modal"
						data-bs-target="#servicesModal2" style="border: 2px #EFEFEE solid;">
						<div
							class="services-item-caption d-flex align-items-center justify-content-center h-100 w-100">
						</div>
						<h3 style="text-decoration: underline;color:#ff0000; margin-left:17px;">Emergency Mechanic</h3>
						<img class="img-fluid" src="assets/img/services/emergency.png"
							alt="..." />
					</div>
				</div>
				<!-- Services Item 3-->
				<div class="col-md-6 col-lg-4 mb-5">
					<div class="services-item mx-auto" data-bs-toggle="modal"
						data-bs-target="#servicesModal3" style="border: 2px #EFEFEE solid;">
						<div
							class="services-item-caption d-flex align-items-center justify-content-center h-100 w-100">
						</div>
						<h3 style="text-decoration: underline;color:#002db3; margin-left:60px;">Order Services</h3>
						<img class="img-fluid" src="assets/img/services/service.png"
							alt="..." />
					</div>
				</div>
				<!-- Services Item 4-->
				<div class="col-md-6 col-lg-4 mb-5 mb-lg-0">
					<div class="services-item mx-auto" data-bs-toggle="modal"
						data-bs-target="#servicesModal4" style="border: 2px #EFEFEE solid;">
						<div
							class="services-item-caption d-flex align-items-center justify-content-center h-100 w-100">
						</div>
						<h3 style="text-decoration: underline;color:#002db3; margin-left:42px;">Customer's Corner</h3>
						<img class="img-fluid" src="assets/img/services/customer.png"
							alt="..." />
					</div>
				</div>
				<!-- Services Item 5-->
				<div class="col-md-6 col-lg-4 mb-5 mb-md-0">
					<div class="services-item mx-auto" data-bs-toggle="modal"
						data-bs-target="#servicesModal5" style="border: 2px #EFEFEE solid;">
						<div
							class="services-item-caption d-flex align-items-center justify-content-center h-100 w-100">
						</div>
						<h3 style="text-decoration: underline;color:#002db3; margin-left:60px;">Check Your Bill</h3>
						<img class="img-fluid" src="assets/img/services/bill.png"
							alt="..." />
					</div>
				</div>
				<!-- Services Item 6-->
				<div class="col-md-6 col-lg-4">
					<div class="services-item mx-auto" data-bs-toggle="modal"
						data-bs-target="#servicesModal6" style="border: 2px #EFEFEE solid;">
						<div
							class="services-item-caption d-flex align-items-center justify-content-center h-100 w-100">
						</div>
						<h3 style="text-decoration: underline;color:#002db3; margin-left:52px;">Mechanic Corner</h3>
						<img class="img-fluid" src="assets/img/services/mechanic.png"
							alt="..." />
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- About Section-->
	<section class="page-section bg-primary text-white mb-0" id="about">
		<div class="container">
			<!-- About Section Heading-->
			<h2
				class="page-section-heading text-center text-uppercase text-white">About</h2>
			<!-- Icon Divider-->
			<div class="divider-custom divider-light">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- About Section Content-->
			<div class="row">
				<div class="col-lg-4 ms-auto">
					<p class="lead">Get Mechanic is a free to use Web App created by
						Kuldeep Maurya. This web App helps people to find Mechanic easily
						whenever needed effortlessly.</p>
				</div>
				<div class="col-lg-4 me-auto">
					<p class="lead">You can Get Mechanic whenever you want for servicing, 
					emergency etc, Register Yourself to create your Account using your email 
					address to use the services !</p>
				</div>
			</div>
			<!-- About Section Button-->
			<div class="text-center mt-4">
				<a class="btn btn-xl btn-outline-light"
					href="#!">
					Know More
				</a>
			</div>
		</div>
	</section>
	<!-- Contact Section-->
	<section class="page-section" id="contact">
		<div class="container">
			<!-- Contact Section Heading-->
			<h2
				class="page-section-heading text-center text-uppercase text-secondary mb-0">Contact
				Me</h2>
			<!-- Icon Divider-->
			<div class="divider-custom">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- Contact Section Form-->
			<div class="row justify-content-center">
				<div class="col-lg-8 col-xl-7">
					<!-- * * * * * * * * * * * * * * *-->
					<!-- * * SB Forms Contact Form * *-->
					<!-- * * * * * * * * * * * * * * *-->
					<!-- This form is pre-integrated with SB Forms.-->
					<!-- To make this form functional, sign up at-->
					<!-- https://startbootstrap.com/solution/contact-forms-->
					<!-- to get an API token!-->
					<form id="contactForm" action="#!">
						<!-- Name input-->
						<div class="form-floating mb-3">
							<input class="form-control" id="name" type="text"
								placeholder="Enter your name..." data-sb-validations="required" />
							<label for="name">Full name</label>
							<div class="invalid-feedback" data-sb-feedback="name:required">A
								name is required.</div>
						</div>
						<!-- Email address input-->
						<div class="form-floating mb-3">
							<input class="form-control" id="email" type="email"
								placeholder="name@example.com"
								data-sb-validations="required,email" /> <label for="email">Email
								address</label>
							<div class="invalid-feedback" data-sb-feedback="email:required">An
								email is required.</div>
							<div class="invalid-feedback" data-sb-feedback="email:email">Email
								is not valid.</div>
						</div>
						<!-- Phone number input-->
						<div class="form-floating mb-3">
							<input class="form-control" id="phone" type="tel"
								placeholder="(+91) 12345-67890" data-sb-validations="required" />
							<label for="phone">Phone number</label>
							<div class="invalid-feedback" data-sb-feedback="phone:required">A
								phone number is required.</div>
						</div>
						<!-- Message input-->
						<div class="form-floating mb-3">
							<textarea class="form-control" id="message" type="text"
								placeholder="Enter your message here..." style="height: 10rem"
								data-sb-validations="required"></textarea>
							<label for="message">Message</label>
							<div class="invalid-feedback" data-sb-feedback="message:required">A
								message is required.</div>
						</div>
						
						<!-- Submit Button-->
						<div class="h-100 d-flex align-items-center justify-content-center">
							<input type="submit" id="save" value="Send" class="btn btn-primary btn-xl">
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>
	<!-- Footer-->
	<footer class="footer text-center">
		<div class="container">
			<div class="row">
				<!-- Footer Location-->
				<div class="col-lg-4 mb-5 mb-lg-0">
					<h4 class="text-uppercase mb-4">Location</h4>
					<p class="lead mb-0">
						Office no.1, Varanasi <br /> India-221101
					</p>
				</div>
				<!-- Footer Social Icons-->
				<div class="col-lg-4 mb-5 mb-lg-0">
					<h4 class="text-uppercase mb-4">Around the Web</h4>
					<a class="btn btn-outline-light btn-social mx-1" href="#!"><i
						class="fab fa-fw fa-facebook-f"></i></a> <a
						class="btn btn-outline-light btn-social mx-1" href="#!"><i
						class="fab fa-fw fa-instagram"></i></a> <a
						class="btn btn-outline-light btn-social mx-1" href="#!"><i
						class="fab fa-fw fa-linkedin-in"></i></a> <a
						class="btn btn-outline-light btn-social mx-1" href="#!"><i
						class="fab fa-fw fa-google"></i></a>
				</div>
				<!-- Footer About Text-->
				<div class="col-lg-4">
					<h4 class="text-uppercase mb-4">About Get Mechanic</h4>
					<p class="lead mb-0">
						Get Mechanic is a free to use, Service Based Web app created
						by <br><a href="portfolio.html">Kuldeep Maurya</a> .
					</p>
				</div>
			</div>
		</div>
	</footer>
	<!-- Copyright Section-->
	<div class="copyright py-4 text-center text-white">
		<div class="container">
			<small>Copyright &copy; GetMechanic 2022</small>
		</div>
	</div>
	<!-- Services Modals-->
	<!-- Services Modal 1-->
	<div class="services-modal modal fade" id="servicesModal1"
		tabindex="-1" aria-labelledby="servicesModal1" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header border-0">
					<button class="btn-close" type="button" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body text-center pb-5">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-8">
								<!-- Services Modal - Title-->
								<h2
									class="services-modal-title text-secondary text-uppercase mb-0">Check Progress
								</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon">
										<i class="fas fa-star"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- Services Modal - Image-->
								<img class="img-fluid rounded mb-1"
									src="assets/img/services/progress.png" alt="..." style="height:100px;width:100px;"/>
								<!-- Services Modal - Text-->
								<div class="mb-2">
									<div style="margin-top:25px; border:2px solid black; padding:25px 0 25px 0;">
										<div style="color:orange; text-decoration:underline;">
											<h3>Login to Continue :-</h3>
										</div>
										<div style="margin-top:30px;">
											<form method="post" action="<%=request.getContextPath()%>/mainController?action=loginSubmit">
												<div class="form-group">
													<label for="username"><i class="zmdi zmdi-account material-icons-name"></i>Username :</label> 
														<input type="text" name="username" id="username"
														placeholder="Username" required/>
												</div>
												<div class="form-group">
													<label for="password"><i class="zmdi zmdi-lock"></i>Password :</label> 
													<input type="password" name="password" id="password"
														placeholder="Password" required/>
												</div>
												<input type="hidden" name="loginType" value="customer">
												<div class="form-group form-button" style="margin-top:25px;">
													<input type="submit" name="signin" id="signin"
														class="form-submit" value="Log in" />
												</div>
											</form>
										</div>
										<div style="margin-top:25px;">
											<h3 style=font-size:20px;">Not Registered ?</h3>
											<a href="registration.jsp" class="signup-image-link">Click Here to Register YourSelf</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Services Modal 2-->
	<div class="services-modal modal fade" id="servicesModal2"
		tabindex="-1" aria-labelledby="servicesModal2" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header border-0">
					<button class="btn-close" type="button" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body text-center pb-5">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-8">
								<!-- Services Modal - Title-->
								<h2
									class="services-modal-title text-secondary text-uppercase mb-0">Emergency Mechanic
								</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon">
										<i class="fas fa-star"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- Services Modal - Image-->
								<img class="img-fluid rounded mb-1"
									src="assets/img/services/emergency.png" alt="..." style="height:100px;width:100px;"/>
								<!-- Services Modal - Text-->
								<div class="mb-2">
									<div style="margin-top:25px; border:2px solid black; padding:25px 0 25px 0;">
										<div style="color:orange; text-decoration:underline;">
											<h3>Login to Continue :-</h3>
										</div>
										<div style="margin-top:30px;">
											<form method="post" action="<%=request.getContextPath()%>/mainController?action=loginSubmit">
												<div class="form-group">
													<label for="username"><i class="zmdi zmdi-account material-icons-name"></i>Username :</label> 
														<input type="text" name="username" id="username"
														placeholder="Username" required/>
												</div>
												<div class="form-group">
													<label for="password"><i class="zmdi zmdi-lock"></i>Password :</label> 
													<input type="password" name="password" id="password"
														placeholder="Password" required/>
												</div>
												<input type="hidden" name="loginType" value="customer">
												<div class="form-group form-button" style="margin-top:25px;">
													<input type="submit" name="signin" id="signin"
														class="form-submit" value="Log in" />
												</div>
											</form>
										</div>
										<div style="margin-top:25px;">
											<h3 style=font-size:20px;">Not Registered ?</h3>
											<a href="registration.jsp" class="signup-image-link">Click Here to Register YourSelf</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Services Modal 3-->
	<div class="services-modal modal fade" id="servicesModal3"
		tabindex="-1" aria-labelledby="servicesModal3" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header border-0">
					<button class="btn-close" type="button" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body text-center pb-5">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-8">
								<!-- Services Modal - Title-->
								<h2
									class="services-modal-title text-secondary text-uppercase mb-0">Order Services</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon">
										<i class="fas fa-star"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- Services Modal - Image-->
								<img class="img-fluid rounded mb-1"
									src="assets/img/services/service.png" alt="..." style="height:100px;width:100px;"/>
								<!-- Services Modal - Text-->
								<div class="mb-2">
									<div style="margin-top:25px; border:2px solid black; padding:25px 0 25px 0;">
										<div style="color:orange; text-decoration:underline;">
											<h3>Login to Continue :-</h3>
										</div>
										<div style="margin-top:30px;">
											<form method="post" action="<%=request.getContextPath()%>/mainController?action=loginSubmit">
												<div class="form-group">
													<label for="username"><i class="zmdi zmdi-account material-icons-name"></i>Username :</label> 
														<input type="text" name="username" id="username"
														placeholder="Username" required/>
												</div>
												<div class="form-group">
													<label for="password"><i class="zmdi zmdi-lock"></i>Password :</label> 
													<input type="password" name="password" id="password"
														placeholder="Password" required/>
												</div>
												<input type="hidden" name="loginType" value="customer">
												<div class="form-group form-button" style="margin-top:25px;">
													<input type="submit" name="signin" id="signin"
														class="form-submit" value="Log in" />
												</div>
											</form>
										</div>
										<div style="margin-top:25px;">
											<h3 style=font-size:20px;">Not Registered ?</h3>
											<a href="registration.jsp" class="signup-image-link">Click Here to Register YourSelf</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Services Modal 4-->
	<div class="services-modal modal fade" id="servicesModal4"
		tabindex="-1" aria-labelledby="servicesModal4" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header border-0">
					<button class="btn-close" type="button" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body text-center pb-5">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-8">
								<!-- Services Modal - Title-->
								<h2
									class="services-modal-title text-secondary text-uppercase mb-0">Customer Corner</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon">
										<i class="fas fa-star"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- Services Modal - Image-->
								<img class="img-fluid rounded mb-1"
									src="assets/img/services/customer.png" alt="..." style="height:100px;width:100px;"/>
								<!-- Services Modal - Text-->
								<div class="mb-2">
									<div style="margin-top:25px; border:2px solid black; padding:25px 0 25px 0;">
										<div style="color:orange; text-decoration:underline;">
											<h3>Customer Login to Continue :-</h3>
										</div>
										<div style="margin-top:30px;">
											<form method="post" action="<%=request.getContextPath()%>/mainController?action=loginSubmit">
												<div class="form-group">
													<label for="username"><i class="zmdi zmdi-account material-icons-name"></i>Username :</label> 
														<input type="text" name="username" id="username"
														placeholder="Username" required/>
												</div>
												<div class="form-group">
													<label for="password"><i class="zmdi zmdi-lock"></i>Password :</label> 
													<input type="password" name="password" id="password"
														placeholder="Password" required/>
												</div>
												<input type="hidden" name="loginType" value="customer">
												<div class="form-group form-button" style="margin-top:25px;">
													<input type="submit" name="signin" id="signin"
														class="form-submit" value="Log in" />
												</div>
											</form>
										</div>
										<div style="margin-top:25px;">
											<h3 style=font-size:20px;">Not Registered ?</h3>
											<a href="registration.jsp" class="signup-image-link">Click Here to Register YourSelf</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Services Modal 5-->
	<div class="services-modal modal fade" id="servicesModal5"
		tabindex="-1" aria-labelledby="servicesModal5" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header border-0">
					<button class="btn-close" type="button" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body text-center pb-5">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-8">
								<!-- Services Modal - Title-->
								<h2
									class="services-modal-title text-secondary text-uppercase mb-0">Check Your Bill</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon">
										<i class="fas fa-star"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- Services Modal - Image-->
								<img class="img-fluid rounded mb-1"
									src="assets/img/services/bill.png" alt="..." style="height:100px;width:100px;"/>
								<!-- Services Modal - Text-->
								<div class="mb-2">
									<div style="margin-top:25px; border:2px solid black; padding:25px 0 25px 0;">
										<div style="color:orange; text-decoration:underline;">
											<h3>Login to Continue :-</h3>
										</div>
										<div style="margin-top:30px;">
											<form method="post" action="<%=request.getContextPath()%>/mainController?action=loginSubmit">
												<div class="form-group">
													<label for="username"><i class="zmdi zmdi-account material-icons-name"></i>Username :</label> 
														<input type="text" name="username" id="username"
														placeholder="Username" required/>
												</div>
												<div class="form-group">
													<label for="password"><i class="zmdi zmdi-lock"></i>Password :</label> 
													<input type="password" name="password" id="password"
														placeholder="Password" required/>
												</div>
												<input type="hidden" name="loginType" value="customer">
												<div class="form-group form-button" style="margin-top:25px;">
													<input type="submit" name="signin" id="signin"
														class="form-submit" value="Log in" />
												</div>
											</form>
										</div>
										<div style="margin-top:25px;">
											<h3 style=font-size:20px;">Not Registered ?</h3>
											<a href="registration.jsp" class="signup-image-link">Click Here to Register YourSelf</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Services Modal 6-->
	<div class="services-modal modal fade" id="servicesModal6"
		tabindex="-1" aria-labelledby="servicesModal6" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header border-0">
					<button class="btn-close" type="button" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body text-center pb-5">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-8">
								<!-- Services Modal - Title-->
								<h2
									class="services-modal-title text-secondary text-uppercase mb-0">Mechanic Corner</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon">
										<i class="fas fa-star"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- Services Modal - Image-->
								<img class="img-fluid rounded mb-1"
									src="assets/img/services/mechanic.png" alt="..." style="height:100px;width:100px;"/>
								<!-- Services Modal - Text-->
								<div class="mb-2">
									<div style="margin-top:25px; border:2px solid black; padding:25px 0 25px 0;">
										<div style="color:orange; text-decoration:underline;">
											<h3>Mechanic Login to Continue :-</h3>
										</div>
										<div style="margin-top:30px;">
											<form method="post" action="<%=request.getContextPath()%>/mainController?action=loginSubmit">
												<div class="form-group">
													<label for="username"><i class="zmdi zmdi-account material-icons-name"></i>Username :</label> 
														<input type="text" name="username" id="username"
														placeholder="Username" required/>
												</div>
												<div class="form-group">
													<label for="password"><i class="zmdi zmdi-lock"></i>Password :</label> 
													<input type="password" name="password" id="password"
														placeholder="Password" required/>
												</div>
												<input type="hidden" name="loginType" value="mechanic">
												<div class="form-group form-button" style="margin-top:25px;">
													<input type="submit" name="signin" id="signin"
														class="form-submit" value="Log in" />
												</div>
											</form>
										</div>
										<div style="margin-top:25px;">
											<h3 style=font-size:20px;">Not Registered ?</h3>
											<a href="registration.jsp" class="signup-image-link">Click Here to Register YourSelf</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
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
