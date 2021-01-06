<!DOCTYPE html>
<html>
<head>
<title>Online Voting</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" type="text/css" href="Style1.css">
</head>
<body>
<header id="main-header" >
<div class="container">
<marquee ><h1>WELCOME TO ONLINE VOTING </h1></marquee>
</div>

<div class="logout">
<button type="submit" class="logout-btn"><a href="Home.jsp">Log out</a></button>
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
<a href="UserLogin.jsp" style="color:maroon;">User Login</a>
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
<form method="post" action="CastVote.jsp">

<div class="vote-box">
<h1 id="castvote">Cast Your Vote</h1>
<div class="vote-innerbox">

<div class="party-list">
<ol>
<div class="pp" align="left"><li>Bhartiya Janta Party <img src="css/bjp.jpeg" width="50p" height="50" align="right"></div>
<!--<div class="logo1"><img src="bjp.jpeg" width="50p" height="50" align="right"></div>-->
<div class= "candidates" >Narendra Modi: <input type="radio" name="cand"  value="nm" class="radio-button-txt"  required ></div>
</li><br><br>

<div class="pp" align="left"><li>Indian National Congress <img src="css/congress.jpeg" width="50" height="50" align="right"></div>
<!--<div class="logo1"><img src="congress.jpeg" width="50" height="50" align="right"></div>-->
<div class="candidates" >Sonia Gandhi: <input type="radio" name="cand" value="sg" class="radio-button-txt" required ></div>
</li><br><br>

<div class="pp" align="left"><li>Aam Aadmi Party <img src="css/aap.jpeg" width="50" height="50" align="right"></div>
<!--<div class="logo1"><img src="aap.jpeg" width="50" height="50" align="right"></div>-->
<div class="candidates" >Arvind Kejriwal: <input type="radio" name="cand" value="ak" class="radio-button-txt" required></div>
</li><br><br>

<div class="pp" align="left"><li>Bhaujan Samaj Party <img src="css/bsp.jpeg" width="50" height="50" align="right"></div>
<!--<div class="logo1"><img src="bsp.jpeg" width="50" height="50" align="right"></div>-->
<div class="candidates" >Mayawati : <input type="radio" name="cand" value="mw" class="radio-button-txt" required ></div>
</li><br><br>

<div class="pp" align="left"><li>Rashtriya Janta Dal Party <img src="css/rjd.jpeg" width="50" height="50" align="right"></div>
<!--<div class="logo1"><img src="rjd.jpeg" width="50" height="50" align="right"></div>-->
<div class="candidates" >Lalu Prasad Yadav: <input type="radio" name="cand" value="lpy" class="radio-button-txt" required></div>
</li><br><br>
</ol>


</div class="vote-now">
<button type="submit" class="votenow-btn">vote now</button>
</div>
</div>
</form>
</header>

<Footer>
&COPY 2020 By Election Commission of India
</Footer>
</body>
</html>