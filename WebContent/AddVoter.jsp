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

<li><div class="dropdown"><button class="dropbtn">Logout <i class="fa fa-caret-down"></i></button>
<div class="dropdown-content">
<a href="Home.jsp" style="color:maroon;">Admin Logout</a>
<a href="AdminSetting.jsp" style="color:maroon;">Setting & Privacy</a>
<a href="Help.jsp" style="color:maroon;">Help</a>
<a href="Language.jsp" style="color:maroon;">Language</a>
</div>
</div> </li>

<%----%>


</ul>
</div>
</nav>

<div class="form-box2">
<center  style="#6e0107;"><h1 id="addcandidate">Add Voter record  </h1></center>
<h2 >Welcome to online Voting System</h2>
<form method="post"    action="AdminAddVoter.jsp">
<input type="text" class="input-field" name="firstName" pattern="[A-Za-z]{1,32}" title="Name should contain only Alphabets" placeholder="First Name "  autocomplete="off" required>
<input type="text"  class="input-field"  name="lastName" pattern="[A-Za-z]{1,32}" placeholder="Last Name"  title="Name should contain only Alphabets" autocomplete="off" required>

<input type="text" class="input-field" name="vid" pattern="^[0-9]{10}$" size="10" title="Enter Valid 10-digit Voter Id" autocomplete="off" placeholder="Enter Voter Id " required>
<input type="text" pattern= "^[0-9]{12}$"size="12" name ="vadhar" class="input-field" placeholder="Aadhar Number" title="Enter Valid 12-digit Aadhar Number" autocomplete="off" required>

<%-- <input type="text" class="input-field" name="vcadhar" placeholder="Adhar Number  " required>--%>

<button type="submit" class="submit-btn">Add Candidate</button>
</form>
<div class="addcandidate">
<a href="voterManage.jsp">Back</a>
</div>
</div>

</header>
<Footer>
&COPY 2020 By Election Commission of India
</Footer>

</body>
</html>