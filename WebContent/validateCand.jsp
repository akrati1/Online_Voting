<%@page import="modal.adminmodal"%>
<%@  page import="modal.Usermodal"%>
<%@ page import="dao.UserDao"%>
<%@ page import="modal.candmodal" %>
<%
	String ceid = request.getParameter("candEnrollId");
	String cpass = request.getParameter("cpass");
	candmodal cand = new candmodal();
	cand.setCeid(ceid);
	cand.setCpass(cpass);
	UserDao userdao = new UserDao();
	Boolean b = userdao.validatecandi(cand);
	if (b == true) {
		application.setAttribute("ceid", cand.getCeid());
		response.sendRedirect("Welcomecand.jsp");
	} else {
		response.sendRedirect("error.jsp");
	}
%>