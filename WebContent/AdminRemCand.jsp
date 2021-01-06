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
				<%-- <li>  <div class="dropdown">
    			<button class="dropbtn"><a href="https://eci.gov.in/">About EC</a>
     					 <i class="fa fa-caret-down"></i>
  					  </button></li>
				
		<li><div class="dropdown">
    		<button class="dropbtn"><a href="#">Candidate Portfolio</a><i class="fa fa-caret-down"></i></button>
     			     <div class="dropdown-content">
     					          <a href="https://en.wikipedia.org/wiki/Narendra_Modi" style="color:maroon;">Narendra Modi</a>
     						      <a href="https://en.wikipedia.org/wiki/Sonia_Gandhi" style="color:maroon;">Sonia Gandhi</a>
     					          <a href="https://en.wikipedia.org/wiki/Mayawati" style="color:maroon;">Mayawati</a>
     					          <a href="https://en.wikipedia.org/wiki/Lalu_Prasad_Yadav" style="color:maroon;">Lalu Prasad Yadav</a>
     					          <a href="https://en.wikipedia.org/wiki/Arvind_Kejriwal" style="color:maroon;">Arvind Kejriwal</a>
    			            </div>		 
            </div></li>
				
				<li><div class="dropdown"><button class="dropbtn">Login <i class="fa fa-caret-down"></i></button>
    				       <div class="dropdown-content">
     					          <a href="UserLogin.jsp" style="color:maroon;">User Login</a>
     						      <a href="CandidateLogin.jsp" style="color:maroon;">Candidate Login</a>
     					          <a href="AdminLogin.jsp" style="color:maroon;">Admin Login</a>
    			            </div>
  				</div> </li>
  				 <li> <div class="dropdown"><button class="dropbtn">Register <i class="fa fa-caret-down"></i></button>
    				<div class="dropdown-content">
     					 <a href="RegisterCandidate.jsp" style="color:maroon;">Candidate Register</a>
     					 <a href="RegisterVoter.jsp" style="color:maroon;">Voter Register</a></div>
  					</div></li>--%>
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
   Validate_Candidate_Dao valcandao=new Validate_Candidate_Dao();
   Integer i=valcandao.deleteRecord(val_can_mod);
   if(i==1){
	      %>
	      <script type="text/javascript">
	      window.alert("sometext"); </script>
	      <%
	   
		/*application.setAttribute("uname", user.getUname());*/
		response.sendRedirect("RemoveCandidate.jsp");
		
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