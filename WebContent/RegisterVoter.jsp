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

<li> <div class="dropdown">
<button class="dropbtn"><a href="Home.jsp">Home</a>
<i class="fa fa-caret-down"></i>
</button></li>
<li> <div class="dropdown">
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
<div class="form-box">
<h1 id="Voter-Register">Voter Registration</h1>
<form class = "input-group" action="VoterAddS.jsp">
<input type="text" size="14" name="firstName" class="input-field" placeholder="First Name" pattern="[A-Za-z]{1,32}" title="Name should contain only Alphabets" autocomplete="off" required>
<input type="text" size="14" name="lastName" class="input-field" placeholder="Last Name" pattern="[A-Za-z]{1,32}" title="Name should contain only Alphabets" autocomplete="off" required>
<input type="text" pattern="^[0-9]{10}$" size="10" name="voter_id" class="input-field" placeholder="Voter Id" title="Enter Valid 10-digit Voter Id" autocomplete="off" required>
<input type="text" pattern= "^[0-9]{12}$"size="12" name ="aadhar_Number" class="input-field" placeholder="Aadhar Number" title="Enter Valid 12-digit Aadhar Number" autocomplete="off" required>
<span>Male:</span><input type="radio" name="gender" value="Male" class="radio-button-txt" required >
Female: <input type="radio" name="gender" value="Female" class="radio-button-txt" required>
Others: <input type="radio" name="gender" value="Others" class="radio-button-txt" required>
<br/>
<span>Date of Birth: </span><input type="date" name="dob"value="2002-12-31"min="1970-01-01" max="2002-12-31" autocomplete="off">
<!--  <input type="text" name="dob" class="input-field" placeholder="Date of birth" required> -->
<input type="tel" pattern="^(5|6|7|8|9)\d{9}$" size="10" name="mobile_No" class="input-field" placeholder="Mobile No" title="Number must contain 10 digits" required>
<input type="email" size="30" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$*"name ="email_Id" class="input-field" placeholder="Email-Id" title="Enter Email in this format ex:xyz@gamil.com" required>
<input type="password" pattern="[A-z a-z 0-9]{5,10}" size="10" name ="user_Password" class="input-field" placeholder="User Password" title="Enter at least 5-letter and max 10-letter password :Don't use special characters " required>
<input type="text" name="address" size="50" pattern="([a-zA-Z0-9]| |/|\\|@|-|\$|,|&){5,50}"  class="input-field" placeholder="Address" title="Enter Valid 50-letter Address ex:E - 142 B , Delhi" required>
<button type="submit" class="submit-btn">Register</button>
<span>Already a user?</span><a href="UserLogin.jsp">Login</a>
</form>
</div>
</header>


</body>
</html>