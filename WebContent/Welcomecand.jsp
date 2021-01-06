<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Online Voting</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	
	<link rel="stylesheet" type="text/css" href="Style1.css">
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
    			<button class="dropbtn"><a href="Home.jsp">Logout </a>
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
<div class="form-box2">
 
 <h1 style="color=#6e0107 ;">   
<%  String UserNeme=(String)application.getAttribute("ceid");
  out.println(" Candidate Enrollment id  "+UserNeme);
  %><br><br><% out.println(" Your profile is ready ");
%>
 </h1>
 <br><br>
   <a href="ViewResult.jsp" style="text-decoration: none;font-size: 1.6em;color: maroon;">  View Result  </a>
  
  </div>
</header>

<Footer>
&COPY 2020 By Election Commission of India
</Footer>
	
	</body>
</html>