<%@page import = "modal.Cast_Vote" %>
<%@ page import="dao.Cast_Vote_Dao" %>
<%@page import = "java.util.*" %>
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

<li><div class="dropdown"><button class="dropbtn">Setting<i class="fa fa-caret-down"></i></button>
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

 <br><br>
</center></h1>

<%
Cast_Vote cast_vote = new Cast_Vote();
Cast_Vote_Dao cast_vote_dao = new Cast_Vote_Dao();
List<Cast_Vote> l = cast_vote_dao.findAll();
Iterator<Cast_Vote> itr = l.iterator();
out.println("<table border='1' align='center' width='50%' style='color=black;'>");
out.println("<tr><th>Narendra Modi</th><th>Sonia Gandhi</th><th>Arvind Kejriwal</th><th>Mayawati</th><th>Lalu Prasad Yadav</th></tr>");
while(itr.hasNext())
{
	Cast_Vote cv = itr.next();
	out.println("<tr>");
		out.println("<td>" + cv.getNm() + "</td>");
		out.println("<td>" + cv.getSg() + "</td>");
		out.println("<td>" + cv.getAk() + "</td>");
		out.println("<td>" + cv.getMw() + "</td>");
		out.println("<td>" + cv.getLpy() + "</td>");
	out.println("</tr>");
}
out.println("</table>");


/*cast_vote.setNm(0);
cast_vote.setSg(0);
cast_vote.setAk(0);
cast_vote.setMw(0);
cast_vote.setLpy(0);
*/
%><br><br>
<button type="submit" style="margin-left: 45%; " ><a href="AdminLoginScreen.jsp" style="text-decoration: none"> Back</a></button>

</div>

</header>
<Footer>
&COPY 2020 By Election Commission of India
</Footer>

</body>
</html>