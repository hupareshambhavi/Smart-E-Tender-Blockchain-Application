<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.sql.*, com.hit.utility.DBUtil,com.hit.dao.VendorDao,com.hit.dao.VendorDaoImpl,com.hit.beans.VendorBean, javax.servlet.annotation.WebServlet" errorPage="errorpage.jsp"%>
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
		
		if(!user.equalsIgnoreCase("admin") || uname.equals("") || pword.equals("")){
			
			response.sendRedirect("loginFailed.jsp");
			
		}
	
	%>


	<jsp:include page="adminMenu.jsp"></jsp:include>
	
	<br><br><br><br>

	
	
 



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
   

     	<%-- <table style="border-radius:10px" >
			<tr >
				<td id="show" style="min-width:632px;min-height:0px;color:blue">Vendor Details For Vendor Id : <%= request.getParameter("vid") %></td>
			</tr>
		</table> --%>
           <%
           String vendorId = request.getParameter("vid");
           
           VendorDao dao = new VendorDaoImpl();
           
           VendorBean vendor = dao.getVendorDataById(vendorId);
           
           %> 
	

		<table style="background-color:white;margin-left:35%">
			<th colspan="2" style="background-color:#26b0b0;">Vendor Contact Details</th>
			<tr><td>	Vendor Name  : </td><td><%=vendor.getName()  %></td></tr>
			<tr><td>    Mobile No  : </td><td><%=vendor.getMobile()  %></td></tr>
		   <tr><td>Email Id  :</td><td><%=vendor.getEmail()  %></td></tr>
	       <tr><td> Company Name :</td><td><%=vendor.getCompany()  %></td></tr>
		   <tr><td>	Address  : </td><td><%=vendor.getAddress()  %></td></tr>
					
		</table>
	
      <!-- </div>
     </div> -->
     </div>
      
      
    </div> <!-- End of container-fluid-->
	
	
	</body>
<style>
    input,textarea,select{
    	min-width:450px;
    	font-size:16px;
    	background-color:#f8f8f8;
    }
    input:hover,textarea:hover,select:hover{
    	min-width:450px;
    	background-color:white;
    }
	table, th, td { 
				margin-bottom:10px;
				margin-left:20%;
				font-size:20px;
                border: 2px solid green; 
                text-align:center; 
                background-color:white;
                color:#003399;
            } 
             td { 
                padding: 20px; 
                background-color:none; 
            } 
            th{
            	padding:20px;
            	background-color:#660033;
            	color:white;
            	font-weight:bold;
            }

</style>

	<script src="assets/js/jquery1.min.js"></script>
  <script src="assets/js/popper1.js"></script>
  <script src="assets/js/bootstrap1.min.js"></script>
  <script src="assets/js/main1x.js"></script>
  
  

	
</html>
