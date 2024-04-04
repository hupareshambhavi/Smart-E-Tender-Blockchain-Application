<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.sql.*, java.lang.Integer,com.hit.beans.NoticeBean,com.hit.utility.DBUtil,java.util.List,java.util.ArrayList,com.hit.dao.NoticeDaoImpl,com.hit.dao.NoticeDao, javax.servlet.annotation.WebServlet" errorPage="errorpage.jsp"%>
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
 <table style="background-color:white" class="table table-bordered">		
     		<tr style="color:white; font-size:19px; font-weight:bold;background-color:#26b0b0;"> 
     			 <td>Notice Id</td> <td>Title </td> <td> Description</td> <td>Remove ? </td></tr>
     		<%
     			NoticeDao dao = new NoticeDaoImpl();
     			List<NoticeBean> noticeList = dao.viewAllNotice();
     			
     			for(NoticeBean notice : noticeList){
     				
     				int noticeId = notice.getNoticeId();
     				
     				String noticeTitle = notice.getNoticeTitle();
     				
     				String noticeDesc = notice.getNoticeInfo();
     				
     				%>
     
     		<tr> <td><%=noticeId %></td> <td><%=noticeTitle %></td> <td cols="70"><%=noticeDesc %></td> <td><a href="RemoveNoticeSrv?noticeid=<%= noticeId%>"><button style="background-color:red; color:#fff;">Remove</button></a></td> </tr>
     		
     		
     
 <% } %>
    </table>	
     </div>
      
   </div></div></body>
   <script src="assets/js/jquery1.min.js"></script>
  <script src="assets/js/popper1.js"></script>
  <script src="assets/js/bootstrap1.min.js"></script>
  <script src="assets/js/main1x.js"></script>
  
  

	
</html>
      
      
     

   
		
		
  