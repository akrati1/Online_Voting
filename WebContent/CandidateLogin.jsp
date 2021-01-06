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
			
			<li>  <div class="dropdown">
    			<button class="dropbtn"><a href="Home.jsp">Home</a>
     					 <i class="fa fa-caret-down"></i>
  					  </button></li>
				<li>  <div class="dropdown">
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
     					          <a href="UserLogin.jsp" style="color:maroon;">Voter Login</a>
     						      <a href="CandidateLogin.jsp" style="color:maroon;">Candidate Login</a>
     					          <a href="AdminLogin.jsp" style="color:maroon;">Admin Login</a>
    			            </div>
  				</div> </li>
  				 <li> <div class="dropdown"><button class="dropbtn">Register <i class="fa fa-caret-down"></i></button>
    				<div class="dropdown-content">
     					 <a href="RegisterCandidate.jsp" style="color:maroon;">Candidate Register</a>
     					 <a href="RegisterVoter.jsp" style="color:maroon;">Voter Register</a></div>
  					</div></li>
			</ul>
	   </div>	 
	  </nav>
<div class="form-box2">
<h1 id="login">Candidate Login</h1>
<form method="post" action="validateCand.jsp">

<input type="text" pattern="^[0-9]{10}$" size="10" name="candEnrollId" class="input-field" placeholder="Candidate Enrollment Id" title="Enter Valid 10-digit Voter Id" autocomplete="off" required>
<input type="password" pattern="[A-z a-z 0-9]{5,10}" size="10" name ="cpass" class="input-field" placeholder="Enter Password" title="Enter at least 5-letter and max 10-letter password :Don't use special characters ex:@,#,$,%,^,&,*,(,) " required>

<button type="submit" class="submit-btn">Login</button>
</form>
<span>New User?</span> <a href="RegisterCandidate.jsp">Register</a>
</div>

</header>

	</body>
</html>