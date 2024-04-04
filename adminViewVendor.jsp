<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.sql.*, java.lang.Integer,com.hit.beans.VendorBean,com.hit.utility.DBUtil,java.util.List,java.util.ArrayList,com.hit.dao.VendorDaoImpl,com.hit.dao.VendorDao, javax.servlet.annotation.WebServlet" errorPage="errorpage.jsp"%>
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

  
    <style>
    th,tr{
    	height:50px;
    	border:2px black solid;
    	
    }
   
    td{
    	min-width:145px;
    	border: 2px dashed black;
    }
 table{
    	text-align:center;
    	border-radius:10px;
		border:1px red solid;
		text-align:center;
		background-color: cyan;
		margin:20px;
		color:blue;
		font-style:normal;
		font-size: 15.5px;
		padding:20px;
		cellpadding:10;
		cellspacing:10;
    }
    tr:hover{
    	background-color: #DEBEE1;
    	color:black;
    } 
    textarea:hover{
    	background-color:#ADBFAF;
    	color:black;
    }
    .button:hover{
    	background-color:green;
    	color:white;
    	font-size:bold;
    }
    #show{
    	
    	text-align:center;
    	border-radius:10px;
		border:1px red solid;
		text-align:center;
		background-color: cyan;
		margin:20px;
		color:black;
		font-style:normal;
		font-size: 15.5px;
		padding:12px;
		
    
    }
    button:hover{
    
    	background-color:green;
    	color:white;
    }
    </style>
  </head>
<body>


	<%
		String user = (String)session.getAttribute("user");
		String uname = (String)session.getAttribute("username");
		String pword = (String)session.getAttribute("password");
		
		if(user==null || !user.equalsIgnoreCase("admin") || uname.equals("") || pword.equals("")){
			
			response.sendRedirect("loginFailed.jsp");
			
		}
	
	%>

<br><br><br><br>
	
	<jsp:include page="adminMenu.jsp"></jsp:include>
	
	
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
   
     		 
     		 
     		 
     		 
     <table style="background-color:white; " class="table table-bordered">		
     		<tr style="color:white; font-size:22px; font-weight:bold;background-color:#26b0b0">
     		 <td>V. Id</td> <td>V.Name </td> <td> Mobile </td> <td>Email</td> <td>Company</td> <td>Address</td></tr>
     		<%
     			VendorDao dao = new VendorDaoImpl();
     			List<VendorBean> vendorList = dao.getAllVendors();
     			for(VendorBean vendor : vendorList){
     				
     				%>
     				
     			
     		<tr> <td><a style="color:black;" href="adminViewVendorDetail.jsp?vid=<%=vendor.getId() %>"><%= vendor.getId() %></a> </td>  <td><%= vendor.getName() %> </td>  <td><%= vendor.getMobile() %> </td>
     		  <td><%= vendor.getEmail() %> </td>   <td><%= vendor.getCompany() %> </td>  
     		  	<td><textarea readonly><%= vendor.getAddress() %> </textarea></td> </tr>
 
 <% } %>

    </table>	
   
   
   
   
   
   
   
     </div>
     </div></div>
      
    



</body>
</html>
