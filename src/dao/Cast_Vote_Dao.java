package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import modal.Candidate;
import modal.Cast_Vote;

public class Cast_Vote_Dao {
	Connection conn;
	PreparedStatement pst;
	String sql;
	ResultSet rs ;
	public Cast_Vote_Dao() throws Exception
	{
	 conn=Myconnection.getConnection();
	}
	public Integer addRecord() throws SQLException
	{
		sql="insert into result values(?,?,?,?,?)";
		pst = conn.prepareStatement(sql);		
		pst.setInt(1,Cast_Vote.getNm());
		pst.setInt(2,Cast_Vote.getSg());
		pst.setInt(3,Cast_Vote.getAk());
		pst.setInt(4,Cast_Vote.getMw());
		pst.setInt(5,Cast_Vote.getLpy());
		return pst.executeUpdate();
	}
	public Integer deleteRecord() throws SQLException
	{
		sql="delete from result ";
		pst = conn.prepareStatement(sql);
		return pst.executeUpdate();
	}
	public List<Cast_Vote> findAll() throws SQLException
	{
		sql = "select * from result";
		pst = conn.prepareStatement(sql);
		rs=pst.executeQuery();
		List<Cast_Vote> l = new ArrayList<Cast_Vote>();
		
		while(rs.next())
		{
			Cast_Vote c = new Cast_Vote();
			c.setNm(rs.getInt(1));
			c.setSg(rs.getInt(2));
			c.setAk(rs.getInt(3));
			c.setMw(rs.getInt(4));
			c.setLpy(rs.getInt(5));
			l.add(c);
		}
		return l;
	}
}