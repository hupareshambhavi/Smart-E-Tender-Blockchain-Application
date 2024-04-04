<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.sql.*, com.hit.utility.DBUtil, javax.servlet.annotation.WebServlet" errorPage="errorpage.jsp"%>
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
 <form action="CreateTenderSrv" method="post">
		<table style="background-color:white">
			<th colspan="2" style="background-color: #26b0b0;">Add New Tendors</th>
			<tr><td style="color:black;">	Tender Name  : </td><td><input type="text" name="tname" required="required"></td></tr>
			<tr><td style="color:black;">    Tender type  : </td><td><select name="ttype" required="required" >
										<!-- <option value="none" selected disabled hidden> 
          									Select an Option 
     									 	</option>  -->
										  <option  value="construction">Construction</option>
										  <option value="research">Research</option>
										  <option  value="maintainence">Maintainence</option>
										  <option value="buisness">Buisness-implementation</option>
										  <option value="software">Software</option>
										  <option  value="others">Others</option>
										 
										</select></td></tr>
		   <tr><td style="color:black;">	Base Price    :</td><td> <input type="number" name="tprice" required="required"></td></tr>
	       <tr><td style="color:black;"> Strict Deadline :</td><td> <input type="date" name="tdeadline" required="required"></td></tr>
		   <tr><td style="color:black;">	Location     : </td><td> <input type="text" name="tloc" required="required"></td></tr>
		   <tr><td style="color:black;">	Descripton   : </td><td> <textarea rows="4" cols="40" style="font-size:15px" name="tdesc" required="required"></textarea></td></tr>
					
			<tr><td colspan="2" align="center" value="Launch"><input type="submit" style="background-color: #26b0b0; color:white;" value="Launch This Tender" name="user"></td></tr>
			
		</table>
	</form>
	
     </div>
      
      
      
     
   
      
    </div> <!-- End of container-fluid-->
	</div>
	
		<script src="assets/js/jquery1.min.js"></script>
  <script src="assets/js/popper1.js"></script>
  <script src="assets/js/bootstrap1.min.js"></script>
  <script src="assets/js/main1x.js"></script>
  
  


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
                padding: 12px; 
                background-color:none; 
            } 
            th{
            	padding:12px;
            	background-color:#660033;
            	color:white;
            	font-weight:bold;
            }

</style>
</html>
