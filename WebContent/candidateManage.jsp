<!DOCTYPE html>
<html>
<head>
<title>Online Voting</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" type="text/css" href="Style1.css">
<style type="text/css">
.square-box{
width:600px;
height:auto;
position:relative;
margin:6% auto;
background:#FFDAB9;
padding:5px;
overflow:hidden;
}
.backbtn{
  
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

<li><div class="dropdown"><button class="dropbtn"><% String UserNeme=(String)application.getAttribute("aname"); 
  out.println(UserNeme); %><i class="fa fa-caret-down"></i></button>
<div class="dropdown-content">
<a href="Home.jsp" style="color:maroon;"> Logout</a>
<a href="AdminSetting.jsp" style="color:maroon;">Setting & Privacy</a>
<a href="Help.jsp" style="color:maroon;">Help</a>
<a href="Language.jsp" style="color:maroon;">Language</a>
</div>
</div> </li>

<%-- <li> <div class="dropdown">
<button class="dropbtn"><a href="Home.jsp">Home</a>
<i class="fa fa-caret-down"></i>
</button></li>--%>

<%--<li> <div class="dropdown">
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
<a href="c" style="color:maroon;">Candidate Register</a>
<a href="RegisterVoter.jsp" style="color:maroon;">Voter Register</a></div>
</div></li>--%>


</ul>
</div>
</nav>
<div class="square-box">
<h1 id="Admin Login Screen" style=" color=#6e0107"><center><% out.println(" Welcome  "+UserNeme); %><br>
</center></h1>
<%-- <h1 id="Admin Login Screen" style="color=#6e0107"><center>Welcome to online Voting System</center></h1>--%>
<form class = "input-group"><br><br><br>
<button type="submit" class="submit-btn"><a href="AddCandidate.jsp">Add Candidate</a></button>
<button type="submit" class="submit-btn"><a href="UpdateCandidate.jsp">Update Candidate</a></button>
<button type="submit" class="submit-btn"><a href="RemoveCandidate.jsp">Remove Candidate</a></button>
<button type="submit" class="submit-btn"><a href="FindCandidate.jsp">Find Candidate</a></button>
<button type="submit" class="submit-btn"><a href="AdminFindAll.jsp">Find All Candidate</a></button>
<button type="submit" class="submit-btn"><a href="ViewResult.jsp">View Result</a></button><br><br>

<button type="submit" class="backbtn" ><a href="AdminLoginScreen.jsp" style="text-decoration: none"> Back</a></button><br><br><br>


</form>
</div>

</header>
<Footer>
&COPY 2020 By Election Commission of India
</Footer>

</body>
</html>
