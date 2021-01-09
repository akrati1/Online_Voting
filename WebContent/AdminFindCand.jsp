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
    			<button class="dropbtn"><a href="AdminLoginScreen.jsp">Back </a>
     					 <i class="fa fa-caret-down"></i>
  					  </button></li>
				<%-- --%>
			</ul>
	   </div>	 
	  </nav>
<div class="newForm">

 
 <%

 String candEnrollId = request.getParameter("vcenroll");
  //String enroll=request.getParameter("cenroll");
  Validate_Candidate val_can_mod=new Validate_Candidate();
  val_can_mod.setCandEnrollId(candEnrollId);
  
    //AdminDao ad =new AdminDao();
    try{
   Validate_Candidate_Dao valcandao=new Validate_Candidate_Dao();
    val_can_mod=valcandao.findRecord(val_can_mod);
 
	      
	   
    out.println("<table border='1' width='80%' align='center'>");
    out.println("<tr><td>Candidate Name</td><td>Candidate EnrollmentID</td><td>PartyAffiliation</td><td>AdharNumber</td></tr>");
    out.println("<tr>");
    out.println("<td>" + val_can_mod.getUserName()+"</td>");
    out.println("<td>" + val_can_mod.getCandEnrollId() +"</td>");
    out.println("<td>" + val_can_mod.getParty_Affiliation() +"</td>");
    out.println("<td>" + val_can_mod.getAadhar_Number() +"</td>");
    out.println("</tr>");
    out.println("</table>");
    //  out.println(i+" record added");
 	}catch(Exception e){
		out.println(e);
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