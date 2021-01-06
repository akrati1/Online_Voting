<%@page import="dao.Validate_Candidate_Dao"%>
<%@page import="modal.Validate_Candidate"%>
<%@page import="java.util.Iterator"%>
<%@page import="dao.CandidateDao"%>
<%@page import="dao.AdminDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Online Voting</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	
	<link rel="stylesheet" type="text/css" href="Style1.css">
	<style type="text/css">
	.newForm{
	<%--border:1px solid black;--%>
	height: 60%;
	width: 80%;
	background-color: #fffbf7;
	margin: 5%;
	padding: 5%;
	 color: #5c0309;
	
	}
	</style>
</head>
<body>
	<header id="main-header">
		<div class="container">
			<marquee ><h1>WELCOME TO ONLINE VOTING </h1></marquee>
		</div>	
	
	
	
	<nav id="navbar">
	   <div class="container">
			<ul>
			
			<li><div class="dropdown">
    			<button class="dropbtn"><a href="AdminLoginScreen.jsp">back </a>
     					 <i class="fa fa-caret-down"></i>
  					  </button></li>
	
			</ul>
	   </div>	 
	  </nav>
<div class="newForm">

 
 <%
 String firstName = request.getParameter("firstName");
 String lastName = request.getParameter("lastName");
 String userName = firstName + " " +lastName;
 String candEnrollId = request.getParameter("vcenroll");
 String party_Affiliation = request.getParameter("vcpaff");
 String aadhar_Number= request.getParameter("vcadhar");
   //String enroll=request.getParameter("cenroll");
  Validate_Candidate val_can_mod=new Validate_Candidate();
  val_can_mod.setUserName(userName);
  val_can_mod.setCandEnrollId(candEnrollId);
  val_can_mod.setParty_Affiliation(party_Affiliation);
  val_can_mod.setAadhar_Number(aadhar_Number);
  
  
   //AdminDao ad =new AdminDao();
   Validate_Candidate_Dao valcandao=new Validate_Candidate_Dao();
   Integer i=valcandao.updateRecord(val_can_mod);
   if(i==1){
	      %>
	      <script type="text/javascript">
	      window.alert("sometext"); </script>
	      <%
	   
		/*application.setAttribute("uname", user.getUname());*/
		response.sendRedirect("UpdateCandidate.jsp");
		
	}else {
		response.sendRedirect("error.jsp");
	}



  %><br>
 </h1>
 <br>


</div>
</header>

<Footer>
&COPY 2020 By Election Commission of India
</Footer>
	
	</body>
</html>