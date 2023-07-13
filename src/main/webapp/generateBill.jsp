

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
<title>Mechanic</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.svg" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
	crossorigin="anonymous"></script>
<!-- My Script -->
<script type="text/javascript" src="js/myScript.js"></script>
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
						class="nav-link py-3 px-0 px-lg-3 rounded" href="<%=request.getContextPath()%>/index.jsp">HomePage</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="<%=request.getContextPath()%>/mechanic.jsp#previous">Previous Task</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="<%=request.getContextPath()%>/mechanic.jsp#register">Register Task</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="<%=request.getContextPath()%>/mechanic.jsp#update">Update</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="<%=request.getContextPath()%>/mechanic.jsp#orders">Orders</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="mainController?action=logout">Logout</a></li>
					
				</ul>
			</div>
		</div>
	</nav>
	
		<!-- Generate Bill Section-->
	<section class="page-section" id="register" style="background-color: #c0c0c0; margin-top:7%;">
		<div class="container">
			<h2
				class="page-section-heading text-center text-uppercase text-blue">Generate Bill</h2>
			<!-- Icon Divider-->
			<div class="divider-custom">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<div class="h-100 d-flex align-items-center justify-content-center" style="margin-left:auto; margin-right:auto">
				<form method="post" action="<%=request.getContextPath()%>/mechanicController?action=generateBill">
										
					Customer Name :<%=request.getAttribute("oid") %><br>
					<table border="1" id="tbl">
						<tr>
							<th>Work</th>
							<th>Cost</th>
			
						</tr> 
						<tr> 
							<td id="col0"><input type="text" name="work" placeholder="Part/Work" required="required"/></td> 
							<td id="col1"><input type="text" name="cost" placeholder="Price/Charge" required="required"/></td> 
							
						</tr>  
					</table> 
					<table> 
						<tr> 
							<td><input type="button" value="Add Row" onclick="addRows()" /></td> 
							<td><input type="button" value="Delete Row" onclick="deleteRows()"/></td> 
						</tr>  
					</table> 
					<div class="h-100 d-flex align-items-center justify-content-center">
					<input type="submit" id="save" value="Generate Bill" class="btn btn-primary mt-3">
					</div>
				</form>
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
						Get Mechanic is a free to use, Service based Web App created
						by <a href="#">Kuldeep Maurya</a> .
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