<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.sql.*,java.lang.Integer,java.lang.String, com.hit.beans.TenderBean,com.hit.utility.DBUtil,java.util.List,com.hit.dao.TenderDaoImpl,com.hit.dao.TenderDao, javax.servlet.annotation.WebServlet" errorPage="errorpage.jsp"%>

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

	<%
		String user = (String)session.getAttribute("user");
		String uname = (String)session.getAttribute("username");
		String pword = (String)session.getAttribute("password");
		
		if(user==null || !user.equalsIgnoreCase("user") || uname.equals("") || pword.equals("")){
			
			response.sendRedirect("loginFailed.jsp");
			
		}
	
	%>



<br><br><br><br>


	 <!-- Including the header of the page  -->
	
	<jsp:include page="vendorMenu.jsp"></jsp:include>
	
	
	<!-- Including the header of the page  -->
	<br>

	
	<br>
 
     <div class="container-fluid">
     <div class="row">
     
        <div class="col-lg-3"style="margin-left:2%;">
     		<% Connection con = DBUtil.provideConnection(); %>
     		
     		<jsp:include page="notice.jsp"></jsp:include><br>
     		
          <!-- Next marquee starting-->
          <jsp:include page="approved.jsp"></jsp:include><br>
          
        </div>  <!-- End of col-md-3-->
      <!-- </div>  --><!-- End of notice class-->
      
      
      <!-- Next part of same container-fluid in which galary or other information will be shown-->
      
          
   <div class="col-lg-8"> 
 <table style="background-color:white" class="table table-bordered">		
     		<tr style="color:white; font-size:22px; font-weight:bold;background-color:#26b0b0;"> 
     			 <td>Tender Name </td> <td> Tender Type </td> <td>Base Price</td> <td>Location</td> 
     									<td>Deadline</td> <td>Description</td> </tr>
     		<%
     			TenderDao dao = new TenderDaoImpl();
     			List<TenderBean> tenderList = dao.getAllTenders();
     			for(TenderBean tender : tenderList){
     				String tid = tender.getId();
     				String tname = tender.getName();
     				String ttype = tender.getType();
     				int tprice = tender.getPrice();
     				String tloc = tender.getLocation();
     				java.util.Date udeadline = tender.getDeadline();
     				java.sql.Date tdeadline = new java.sql.Date(udeadline.getTime()); 
     				String tdesc = tender.getDesc();
     				
     				%>
     				
     
     		<tr> <td><%=tname %></td> <td><%=ttype %></td> <td><%=tprice %></td> 
     				<td><%=tloc %></td> <td><%=tdeadline %></td> <td><textarea rows="2" cols="45"><%=tdesc %></textarea></td> </tr>
     		
     		
     
 <% } %>
    </table>		
     </div>
      
      
      
     
   
      
    </div> <!-- End of container-fluid-->
	</div>
	
	
	
      
 
    
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