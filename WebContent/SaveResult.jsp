<%@page import = "modal.Cast_Vote" %>
<%@ page import="dao.Cast_Vote_Dao" %>
<%@page import = "java.util.*" %>
<%
Cast_Vote cast_vote = new Cast_Vote();
Cast_Vote_Dao cast_vote_dao = new Cast_Vote_Dao();
Integer i = cast_vote_dao.addRecord();
out.println("Data Save Successfully....");
/*cast_vote.setNm(0);
cast_vote.setSg(0);
cast_vote.setAk(0);
cast_vote.setMw(0);
cast_vote.setLpy(0);
*/
%>