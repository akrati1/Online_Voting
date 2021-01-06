<%@page import = "modal.Cast_Vote" %>
<%@ page import="dao.Cast_Vote_Dao" %>
<%@ page import="java.sql.*" %>
<%


try
{
Cast_Vote cast_vote = new Cast_Vote();
Cast_Vote_Dao cvd = new Cast_Vote_Dao();
Integer i = cvd.deleteRecord();
out.println(i+"Record Delete From table");
cast_vote.setNm(0);
cast_vote.setSg(0);
cast_vote.setAk(0);
cast_vote.setMw(0);
cast_vote.setLpy(0);
}
catch(SQLException e)
{
out.println("No Record to delete....");
}
%>
