<%@page import = "modal.Cast_Vote" %>
<%@ page import="dao.Cast_Vote_Dao" %>
<%@page import = "modal.Voter" %>
<%@ page import="dao.VoterDao" %>
<%
String radio = request.getParameter("cand");
String na_mo = "nm";
String so_gd = "sg";
String ar_kj = "ak";
String maya = "mw";
String lalu ="lpy";

/*String voter_id =(String)application.getAttribute("voter_id");
Voter v = new Voter();
v.setVoter_id(voter_id);
VoterDao vd = new VoterDao();
v = vd.findRecord(v);
int count = v.getCount();
if(count == 0)
{
*/
Cast_Vote cast_vote = new Cast_Vote();
int nm = cast_vote.getNm();
int sg = cast_vote.getSg();
int ak = cast_vote.getAk();
int mw = cast_vote.getMw();
int lpy = cast_vote.getLpy();


if(radio.equals(na_mo))
{
	
	nm = nm + 1;
	cast_vote.setNm(nm);	
}
else if(radio.equals(so_gd))
{
	
	sg = sg + 1;
	cast_vote.setSg(sg);	
}
else if(radio.equals(ar_kj))
{
	
	ak = ak + 1;
	cast_vote.setAk(ak);	
}
else if(radio.equals(maya))
{
	
	mw = mw + 1;
	cast_vote.setMw(mw);	
}
else
{
	lpy = lpy + 1;
	cast_vote.setLpy(lpy);	
}
out.println("Thanks for your time");
/* count = count + 1;
v.setCount(count);
vd.updateCount(v);
out.println("Thanks for your time");
}
else
{
out.println("You Have Already Casted your vote");	
}
*/
%>