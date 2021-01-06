<%@page import="java.util.Iterator"%>
<%@page import="dao.*"%>
<%@page import="modal.*"%>
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
	height: auto;
	width: auto;
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
    			<button class="dropbtn"><a href="candidateManage.jsp">Back </a>
     					 <i class="fa fa-caret-down"></i>
  					  </button></li>
				<%--   --%>
			</ul>
	   </div>	 
	  </nav>
<div class="newForm">
 <h1 style="text-decoration: none;font-size: 1.6em;color: #2f9905;"><%  
  out.println(" Valid candidates List ");
 %></h1>
 
 <%
 try{
	 Validate_Candidate_Dao valcandao=new  Validate_Candidate_Dao();
	 List <Validate_Candidate> l=valcandao.findAll();
	 Iterator <Validate_Candidate> itr=l.iterator();
	 out.println("<table border='1' align='center' width='50%' padding:'2px'>");
		out.println("<tr><th>CandidateName</th><th>EnrollmentId</th><th>party_Affiliation</th><th>aadhar_Number</th></tr>");
		  while(itr.hasNext()){
			  Validate_Candidate c = itr.next();
			  out.println("<tr>");
 		     out.println("<td>" + c.getUserName() + "</td>");
 		     out.println("<td>" + c.getCandEnrollId() + "</td>");
 		     out.println("<td>" + c.getParty_Affiliation() + "</td>");
 		    out.println("<td>" + c.getAadhar_Number() + "</td>");
 		     out.println("</tr>");
 		     }
 		   out.println("</table>");
		  
	 
 }catch(Exception e){
	 
 }
  %>



</div>
</header>

<Footer>
&COPY 2020 By Election Commission of India
</Footer>
	
	</body>
</html>