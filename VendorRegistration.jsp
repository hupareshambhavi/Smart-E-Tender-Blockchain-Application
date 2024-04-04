<!-- <!doctype html>
<html lang="en">
  <head>
  	<title>Login 04</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="assets/css/style1.css">

	</head>
	<body> -->
	
	<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Tender Management System</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style1.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: WeBuild - v4.8.0
  * Template URL: https://bootstrapmade.com/free-bootstrap-coming-soon-template-countdwon/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  
 <!--  <section class="header">
    <div class="container-fluid d-flex justify-content-between align-items-center">

      <div class="logo">
        <h1 class="text-light" style="font-size:30px;"><a href="index.html"><span>Tender Management System</span></a></h1>
        Uncomment below if you prefer to use an image logo
        <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>
      </div>

      <div class="contact-link float-right">
        <a href="Home.jsp" class="scrollto" style="padding: 1em; color:white;">Home  </a>
        <a href="login.jsp" class="scrollto" style="padding: 1em; color:white;">Login</a>
        <a href="VendorRegistration.jsp" class="scrollto" style="padding: 1em; color:white;">Register</a>
      </div>

    </div>
  </section>End #header -->
	<jsp:include page="header.jsp"></jsp:include>
<br><br><br>
  
	<section id="about" class="about">
      <div class="container">
			
			
		  <table class="tab" style="color:blue;margin-bottom:50px;background-color:white; padding:25px;">
	
			<tr>
				<td id="show"></td>
			</tr>
	</table> 
	
	
			<div class="row justify-content-center">
				<div class="col-md-12 col-lg-10">
					<div class="wrap d-md-flex">
						<div class="img">
						<img alt="" src="assets/img/4.jpg">
			      </div>
						<div class="login-wrap p-4 p-md-5">
			      	<div class="d-flex">
			      		<div class="w-100">
			      			<h3 class="mb-4">Registration</h3>
			      		</div>
							
			      	</div>
						
		          
		           <form action="RegisterSrv" method="post" class="formone">
          <div class="row">
            
            <div class="col-md-6 form-group">
            <label class="label" for="name">Name</label>
              <input type="text" name="vname" class="form-control" id="vname" placeholder="Your name" required>
            </div>
           
            <div class="col-md-6 form-group">
            <label class="label" for="name">Address</label>
              <input type="text" name="vaddr" class="form-control" id="vaddr" placeholder="Your address" required>
            </div>
            <div class="col-md-6 form-group">
            <label class="label" for="name">Company</label>
              <input type="text" name="cname" class="form-control" id="cname" placeholder="Your Date of Birth" required>
            </div>
            <div class="col-md-6 form-group">
            <label class="label" for="name">Contact</label>
              <input type="text" name="vmob" class="form-control" id="vmob" placeholder="Your Mobile Number" required>
            </div>
            <div class="col-md-6 form-group mt-3 mt-md-0">
            <label class="label" for="name">Email</label>
              <input type="email" class="form-control" name="vemail" id="vemail" placeholder="Your Email" required>
            </div>
            <div class="col-md-6 form-group">
            <label class="label" for="name">Password</label>
              <input type="password" name="vpass" class="form-control" id="vpass" placeholder="Your password" required>
            </div>
            
          </div><br>
       <div class="text-center">
          <button type="submit" class="form-control btn btn-primary rounded submit px-3" style="width:150px;">Sign In</button>
		 </div>   
       
        </form><br>
		          <p class="text-center">Already a member? <a style="color:#ff3333;" href="login.jsp">Sign In</a></p>
		        </div>
		      </div>
				</div>
			</div>
		</div>
	</section>

		<script src="assets/js/jquery1.min.js"></script>
  <script src="assets/js/popper1.js"></script>
  <script src="assets/js/bootstrap1.min.js"></script>
  <script src="assets/js/main1x.js"></script>
  
  

	</body>
</html>

