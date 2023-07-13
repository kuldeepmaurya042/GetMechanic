<%
if(session.getAttribute("username")==null)
{
	response.sendRedirect(request.getContextPath()+"/login.jsp");
}
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Customer</title>
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
						class="nav-link py-3 px-0 px-lg-3 rounded" href="<%=request.getContextPath()%>/mainController?action=homePage">HomePage</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="#order">Get Mechanic</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="#progress">Progress</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="#bill">Bill</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="#about">About</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="<%=request.getContextPath()%>/mainController?action=logout">Logout</a></li>
					
				</ul>
			</div>
		</div>
	</nav>
	<!-- Masthead-->
	<header class="masthead text-white text-center" style="background-color:#c0c0c0">
		<div class="container d-flex align-items-center flex-column">
			<!-- Masthead Avatar Image-->
			<img class="masthead-avatar mb-5" src="assets/img/avataaars.svg"
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
	
		<!-- Get Mechanic Section-->
	<section class="page-section" id="order" >
		<div class="container">
			<h2
				class="page-section-heading text-center text-uppercase text-blue">Get Mechanic</h2>
			<!-- Icon Divider-->
			<div class="divider-custom">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			
			<div >
				<div class="h-100 d-flex align-items-center justify-content-center" style="margin-left:auto; margin-right:auto">
					<form method="post" action="<%=request.getContextPath()%>/customerController?action=getMechanic">
						<div class="form-group">
						    <label for="vehicleName">VEHICLE NAME :</label>
						    <input type="text" name="vName" class="form-control" id="vehicleName" placeholder="Enter Vehicle Name" required/>
						 </div><br>
						 <div class="form-group">
						    <label for="vehicleNumber">VEHICLE NUMBER :</label>
						    <input type="text" name="vNumber" class="form-control" id="vehicleNumber" placeholder="Enter Vehicle Number" required/>
						 </div><br>
						  <div class="form-group">
						    <label for="contactNumber">CONTACT NUMBER :</label>
						    <input type="text" name="contact" class="form-control" id="contactNumber" placeholder="Enter Mobile Number" required/>
						  </div><br>
						  <div class="form-group">
						    <label for="adress">COMPLETE ADDRESS :</label>
						    <input type="text" name="address" class="form-control" id="address" placeholder="Enter Complete Address" required/>
						  </div>
						<div class="row">
						  <div class="col">
						    <div class="form-outline">
						    	<label for="city">CITY :</label>
						        <input type="text" name="city" id="city" class="form-control" placeholder="City" required/>
						    </div>
						  </div>
						  <div class="col">
						    <div class="form-outline">
						    	<label for="zip">ZIP :</label>
						        <input type="text" name="zip" id="zip" class="form-control" placeholder="Area Code" required/>
						    </div>
						  </div>          
						</div><br>
						<div class="form-group">
						    <label for="issue">ISSUE/SERVICE NEEDED :</label>
						    <input type="text" name="issue" class="form-control" id="issue" placeholder="Describe Issue/Service Needed" required/>
						  </div><br>
						<div class="h-100 d-flex align-items-center justify-content-center">
							<input type="submit" id="save" value="Get Mechanic" class="btn btn-primary mt-3">
						</div>
					</form>
				</div>
			</div>
			
		</div>
	</section>
	<!-- Progress Section-->
	<section class="page-section" id="progress"  style="background-color: #c0c0c0;">
		<div class="container">
			<h2
				class="page-section-heading text-center text-uppercase text-blue">Progress</h2>
			<!-- Icon Divider-->
			<div class="divider-custom">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<div >
				<div class="h-100 d-flex align-items-center justify-content-center" style="margin-left:auto; margin-right:auto">
					
					<jsp:include page="additionalJSP/customerOrders.jsp"/>
					
				</div>
			</div>
		</div>
	</section>
	
	<!-- Bill Section-->
	<section class="page-section" id="bill">
		<div class="container">
			<h2
				class="page-section-heading text-center text-uppercase text-blue">Your Bill</h2>
			<!-- Icon Divider-->
			<div class="divider-custom">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<div>
				
			
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
					<p class="lead">Get Mechanic is a free medium web app created by
						Developers. The download includes the complete source files
						including HTML, CSS, and JavaScript as well as optional SASS
						Stylesheets for easy customization.</p>
				</div>
				<div class="col-lg-4 me-auto">
					<p class="lead">You can Get Mechanic whenever you want for servicing 
					emergency etc, change the icon in the dividers, and add your email
						address to the contact form to make it fully functional!</p>
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
						Get Mechanic is a free to use, MIT licensed service theme created
						by <a href="#">Developer</a> .
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

	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<!-- * *                               SB Forms JS                               * *-->
	<!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</body>
</html>



					
						
						
						
						
						
						
						
						
						
						
						
						
						
						