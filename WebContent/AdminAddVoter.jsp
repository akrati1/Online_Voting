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
 String firstName = request.getParameter("firstName");
 String lastName = request.getParameter("lastName");
 String userName = firstName + " " +lastName;
 String vid = request.getParameter("vid");
  String vadhar= request.getParameter("vadhar");
   //String enroll=request.getParameter("cenroll");
  Validate_Voter valvotmod=new Validate_Voter();
  valvotmod.setUserName(userName);
  valvotmod.setVoter_id(vid);
  valvotmod.setAadhar_Number(vadhar);
  
  
   //AdminDao ad =new AdminDao();
   
   /*Code Added on 30-12-2020 by Vandana Rawat

Validate_Candidate val_cand = new Validate_Candidate();
val_cand.setUserName(userName);
val_cand.setCandEnrollId(candEnrollId);
val_cand.setParty_Affiliation(party_Affiliation);
val_cand.setAadhar_Number(aadhar_Number);
Validate_Candidate_Dao val_cand_dao = new Validate_Candidate_Dao();
int n = val_cand_dao.validate(val_cand);
/*End of Changes done in code on 30-12-2020
if(n>0)
{   */
	
/* CandidateDao candidateDao = new CandidateDao();
Integer i = candidateDao.addRecord(candidate);
if(i==1){
	/*application.setAttribute("uname", user.getUname());*/
/*	response.sendRedirect("CandidateLogin.jsp");
	
}else {
	response.sendRedirect("error.jsp");
   }
*/
 
   Validate_Voter_Dao  valvotdao = new Validate_Voter_Dao();
   int i =valvotdao.addRecord(valvotmod);

   /*End of Changes done in code on 30-12-2020*/
  
   if(i==1){
	    /*application.setAttribute("uname", user.getUname());*/
		response.sendRedirect("AddVoter.jsp");
		
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