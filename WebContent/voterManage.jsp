<!DOCTYPE html>
<html>
<head>
<title>Online Voting</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" type="text/css" href="Style1.css">
<style type="text/css">
.logo-image{
    width: 90%;
    height: 7%;
    border-radius: 50%;
    overflow: hidden;
    margin:auto;
    background-position: inherit;
    
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

</ul>
</div>
</nav>

<div class="square-box">
<h1 id="Admin Login Screen" style=" color=#6e0107"><center> 
 <% out.println(" Welcome  "+UserNeme);
  %><br><br>
</center></h1>

<h1><b><U>Voter</h1></b></U>
<form class = "input-group">
<button type="submit" class="submit-btn"><a href="AddVoter.jsp" style="text-decoration: none">Add Voter</a></button>
<button type="submit" class="submit-btn"><a href="UpdateVoter.jsp" style="text-decoration: none"> Update Details of Voter</button>
<button type="submit" class="submit-btn"><a href="DeleteVoter.jsp" style="text-decoration: none"> Delete Voter</a></button>
<button type="submit" class="submit-btn"><a href="DeleteVoter.jsp" style="text-decoration: none"> Find Voter</a></button>
<button type="submit" class="submit-btn"><a href="AdminFindAllVoter.jsp" style="text-decoration: none"> Find All Voter</a></button>

<button type="submit" ><a href="AdminLoginScreen.jsp" style="text-decoration: none"> Back</a></button>

</form>
</div>

</header>
<Footer>
&COPY 2020 By Election Commission of India
</Footer>

</body>
</html>