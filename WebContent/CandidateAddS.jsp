<%@page import = "modal.Candidate" %>
<%@ page import="dao.CandidateDao" %>
<%@page import = "modal.Validate_Candidate" %>
<%@ page import="dao.Validate_Candidate_Dao" %>
<%@ page import="java.sql.*" %>
<%
String firstName = request.getParameter("firstName");
String lastName = request.getParameter("lastName");
String userName = firstName + " " +lastName;
String candEnrollId = request.getParameter("candEnrollId");
String party_Affiliation = request.getParameter("party_Affiliation");
String aadhar_Number= request.getParameter("aadhar_Number");
String gender = request.getParameter("gender");
String dob = request.getParameter("dob");
String mobile_No = request.getParameter("mobile_No");
String email_Id = request.getParameter("email_Id");
String user_Password = request.getParameter("user_Password");
String address = request.getParameter("address");

Candidate candidate = new Candidate();

candidate.setUserName(userName);
candidate.setCandEnrollId(candEnrollId);
candidate.setParty_Affiliation(party_Affiliation);
candidate.setAadhar_Number(aadhar_Number);
candidate.setGender(gender);
candidate.setDob(dob);
candidate.setMobile_No(mobile_No);
candidate.setEmail_Id(email_Id);
candidate.setUser_Password(user_Password);
candidate.setAddress(address);
/*Code Added on 30-12-2020 by Vandana Rawat

Validate_Candidate val_cand = new Validate_Candidate();
val_cand.setUserName(userName);
val_cand.setCandEnrollId(candEnrollId);
val_cand.setParty_Affiliation(party_Affiliation);
val_cand.setAadhar_Number(aadhar_Number);
Validate_Candidate_Dao val_cand_dao = new Validate_Candidate_Dao();
int n = val_cand_dao.validate(val_cand);
/*End of Changes done in code on 30-12-2020
if(n>0)
{   */
	
CandidateDao candidateDao = new CandidateDao();
Integer i = candidateDao.addRecord(candidate);
if(i==1){
	/*application.setAttribute("uname", user.getUname());*/
	response.sendRedirect("CandidateLogin.jsp");
	
}else {
	response.sendRedirect("error.jsp");
   }

%>