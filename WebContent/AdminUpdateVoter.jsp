<%@page import="dao.Validate_Voter_Dao"%>
<%@page import="modal.Validate_Voter"%>
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
				<%-- 	
		
    		--%>
			</ul>
	   </div>	 
	  </nav>
<div class="newForm">

 
 <%
 String vid = request.getParameter("vid");
 String firstName = request.getParameter("firstName");
 String lastName = request.getParameter("lastName");
 String userName = firstName + " " +lastName;
  String vadhar= request.getParameter("vadhar");
   //String enroll=request.getParameter("cenroll");
  Validate_Voter valvotmod=new Validate_Voter();
  valvotmod.setUserName(userName);
  valvotmod.setVoter_id(vid);
  valvotmod.setAadhar_Number(vadhar);
  

  Validate_Voter_Dao  valvotdao = new Validate_Voter_Dao();
  int i =valvotdao.updateRecord( valvotmod);
  if(i==1){
	    /*application.setAttribute("uname", user.getUname());*/
		response.sendRedirect("UpdateVoter.jsp");
		
	    }else {
		response.sendRedirect("error.jsp");
	  }
%><br><br>
</div>
</header>

<Footer>
&COPY 2020 By Election Commission of India
</Footer>
	
	</body>
</html>