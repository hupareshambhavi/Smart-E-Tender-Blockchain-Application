<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*,com.hit.utility.DBUtil" %>
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
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Serenity - v4.10.0
  * Template URL: https://bootstrapmade.com/serenity-bootstrap-corporate-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>
  
	
          <div class="marquee" style="border:2px #FF5050 solid;background-color:white">
          
          <h4 style="background-color:#FF5050; color:#fff; font-size:19px; margin-top:-1.8px; padding: 5px;"><i class='fas fa-volume-up'></i> 
          &nbsp; Latest Updates and Notice</h4>
            <div class="marquee-content" style="padding:10px;font-weight: bold;font-size: 1.1em">
            <marquee onmouseover="stop()" onmouseout="start()" direction="up" scrollamount="5" height="380px">
            <!-- marquee height and stop start characteristics-->
                <!-- Notice Content-->
            <% 
                Connection con = DBUtil.provideConnection();
                try{
                	PreparedStatement ps = con.prepareStatement("select * from notice order by sysdate() asc");
                	ResultSet rs = ps.executeQuery();
                	String noticeTitle = null;
                	String noticeInfo = null;
                	while(rs.next()){
                		noticeTitle = rs.getString("title");
                		noticeInfo = rs.getString("info");
                		//System.out.println(noticeTitle+" "+noticeInfo);
                		%>
                <p style="font-weight: bold;"><span class="glyphicon glyphicon-hand-right" style="color: #3743fa;"> 
	               <strong style="color:red"><%= noticeTitle %></strong><br><br><%= noticeInfo %>
	               </span>
               </p>
              <hr/>		
                		<%
                	}
                }
                catch(SQLException e){
                	e.printStackTrace();
                }
                %>  
             </marquee><!-- End of marquee-->
             
             <!-- End of Notice Section -->
             
            </div>  <!--End of marquee-content-->
          </div> <!-- End of marquee class-->
  <!-- Vendor JS Files -->
  <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/waypoints/noframework.waypoints.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>