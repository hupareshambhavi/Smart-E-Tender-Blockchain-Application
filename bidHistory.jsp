<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.sql.*,com.hit.beans.VendorBean,com.hit.beans.BidderBean,java.lang.Integer,java.lang.String, com.hit.beans.TenderBean,com.hit.utility.DBUtil,java.util.List,com.hit.dao.BidderDaoImpl,com.hit.dao.BidderDao, javax.servlet.annotation.WebServlet" errorPage="errorpage.jsp"%>
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
     		<tr style="color:white; font-size:22px; font-weight:bold;background-color:#26b0b0; ">
     			 <td>Application Id </td> <td> Tender Id </td> <td>Bid Amount</td> <td>Deadline</td> 
     									<td>Status</td> </tr>
     		<%
     			BidderDao dao = new BidderDaoImpl();
     			VendorBean vendor = (VendorBean) session.getAttribute("vendordata");
     			List<BidderBean> bidderList = dao.getAllBidsOfaVendor(vendor.getId());
     			
     			for(BidderBean bidder: bidderList){
     			
     				
     				%>
     				
     
     		<tr> <td><%=bidder.getBidId() %></td> <td><%=bidder.getTenderId() %></td> <td><%=bidder.getBidAmount()%></td> 
     			 <td><textarea cols="50" style="text-align:center"readonly><%=bidder.getBidDeadline() %></textarea></td> <td><%=bidder.getBidStatus() %></td> </tr>
     		
     		
     
 <% } %>
    </table>	
     </div>
      
      
      
      .
   
      
    </div> <!-- End of container-fluid-->
	</div>
	
	
	
	


<!-- Now from here the footer section starts-->
                      
<!-- Including the footer of the page -->
  <script src="assets/js/jquery1.min.js"></script>
  <script src="assets/js/popper1.js"></script>
  <script src="assets/js/bootstrap1.min.js"></script>
  <script src="assets/js/main1x.js"></script>
  
  

	</body>
</html>

