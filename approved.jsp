<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*,com.hit.utility.DBUtil" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
</head>
<body>
	<!-- <div class="marquee" style="border:2px #FF5050;  solid;background-color:white"> -->
	<div class="marquee" style="border:2px #FF5050 solid;background-color:white; height:350px;">
		<% Connection con = DBUtil.provideConnection(); %>
            <h4 style="background-color:#FF5050; color:#fff; font-size:19px; margin-top:-1.8px; padding: 5px;"><i class='fas fa-volume-up'></i> &nbsp; Recently Approved Tenders</h4>
            <div class="marquee-content"  style="padding:10px;font-weight: bold;font-size: 1.1em">
              <marquee onmouseover="stop()" onmouseout="start()" direction="up" scrollamount="6" height="250">
              <!-- Approved Tenders List -->
              
              <%
              try{
            	  PreparedStatement ps = con.prepareStatement("select * from tenderstatus order by sysdate() asc limit 6");
            	  ResultSet rs = ps.executeQuery();
            	  
            	  while(rs.next()){
            		  String bid = rs.getString("bid");
            		  String  tid=rs.getString("tid");
            		%>
            		<hr>
            		<p style="color:red;">Application Id:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <%= bid %></p>
            		<p style"color:black">Assigned Project Id: &nbsp;&nbsp;<%=tid %></p>
            		
            		<%
            		
            	  }
              }
              catch(SQLException e){
            	  e.printStackTrace();
              }
              
              %>
    
              </marquee> <!--End of marquee-->
            </div>  <!--End of marquee content-->
          </div>  <!--End of marquee class-->
</body>

</html>