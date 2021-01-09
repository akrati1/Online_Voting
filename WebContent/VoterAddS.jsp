<%@page import = "dao.VoterDao" %>
<%@page import = "modal.Voter" %>
<%@page import = "dao.Validate_Voter_Dao" %>
<%@page import = "modal.Validate_Voter" %>
<%@ page import="java.sql.*" %>

<%
String firstName = request.getParameter("firstName");
String lastName = request.getParameter("lastName");
String userName = firstName + " " +lastName;
String voter_id = request.getParameter("voter_id");
String aadhar_Number= request.getParameter("aadhar_Number");
String gender = request.getParameter("gender");
String dob = request.getParameter("dob");
String mobile_No = request.getParameter("mobile_No");
String email_Id = request.getParameter("email_Id");
String user_Password = request.getParameter("user_Password");
String address = request.getParameter("address");

Voter voter = new Voter();

voter.setUserName(userName);
voter.setVoter_id(voter_id);
voter.setAadhar_Number(aadhar_Number);
voter.setGender(gender);
voter.setDob(dob);
voter.setMobile_No(mobile_No);
voter.setEmail_Id(email_Id);
voter.setUser_Password(user_Password);
voter.setAddress(address);

/*New Code Added on 30-12-2020 by Vandana Rawat*/
try
{
Validate_Voter val_voter = new Validate_Voter();
val_voter.setUserName(userName);
val_voter.setVoter_id(voter_id);
val_voter.setAadhar_Number(aadhar_Number);
Validate_Voter_Dao val_voter_dao = new Validate_Voter_Dao();
int n = val_voter_dao.validate(val_voter);
/*End of Changes done in code on 30-12-2020*/
if(n>0)
{
 VoterDao voterDao = new VoterDao();
 Integer i = voterDao.addRecord(voter);
    if(i==1)
    {
	response.sendRedirect("UserLogin.jsp");
     }else {
	response.sendRedirect("error.jsp");
   }
}
else{
    out.println("Invalid Voter Id");
   }
}catch(SQLException e){
   out.println("User with this Candidate Id already exist");
}
%>