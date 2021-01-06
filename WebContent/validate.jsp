<%@  page import="modal.Usermodal"%>
<%@ page import="dao.UserDao"%>
<%
	String vid = request.getParameter("vid");
	String upass1 = request.getParameter("upass");
	Usermodal user = new Usermodal();
	user.setVid(vid);
	user.setUpass(upass1);
	UserDao userdao = new UserDao();
	Boolean b = userdao.validate(user);
	if (b == true) {
		application.setAttribute("vid", user.getVid());
		response.sendRedirect("UserLoginScreen.jsp");
	} else {
		response.sendRedirect("error.jsp");
	}
%>