<html>
<head>
<style type="text/css">
	h1{padding:1%;background:#FF730F;color:#fff;}
	.fl{float:left;}
	.fr{float:right;}
	li
	{
	font-size:16pt;
	padding:8px;
	}
</style>
<link rel="stylesheet" type="text/css" href="css/style.css">
	
</head>

<body style="background-color:white;">
<header id="main-header">
		<div class="container">
			<marquee ><h1>WELCOME TO ONLINE VOTING </h1></marquee>
		</div>	
	</header>
<h1 style="text-align:center;">Welcome Admin</h1>
<form method="post" action="Home.jsp">
<input type="submit" value="Logout" style="float:right;margin-bottom:10px;width:90px;height:30px;">
</form>
<div style="border:1px solid;width:19%;min-height:500px;margin-top:40px;" class="fl">
<ul>
<li><a href="?page1=add.jsp">Add Candidate</a></li>
<li><a href="?page1=update.jsp">Update Details of Candidate</a></li>
<li><a href="?page1=delete.jsp">Delete Candidate</a></li>
<li><a href="?page1=find.jsp">find Candidate</a></li>
<li><a href="?page1=findAllCandidate.jsp">Find All Candidate</a></li>
<li><a href="?page1=findAllVoter.jsp"> View Voter List</a></li>
<li><a href="?page1=changePassword.jsp">Change Password</a></li>
</ul>
</div>
<div style="border:1px solid;width:80%;min-height:500px;" class="fr">
<%
	String page1=request.getParameter("page1");
	if(page1!=null)
	{
%>
	<jsp:include page='<%=page1 + ".jsp" %>'></jsp:include>
<% 		
	}
%>
</div>
<Footer>
&COPY 2020 By Election Commission of India
</Footer>
	
</body>
</html>