package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import modal.Validate_Voter;
import modal.Voter;

public class Validate_Voter_Dao {
	Connection conn;
	PreparedStatement pst;
	String sql;
	ResultSet rs ;
	Integer findResult=0;
	public Validate_Voter_Dao() throws Exception
	{
	 conn=Myconnection.getConnection();
	}
	public Integer addRecord(Validate_Voter v) throws SQLException
	{
		sql="insert into validate_voter values(?,?,?)";
		pst = conn.prepareStatement(sql);		
		pst.setString(1,v.getUserName());
		pst.setString(2,v.getVoter_id());
		pst.setString(3,v.getAadhar_Number());
		return pst.executeUpdate();
	}
	public Integer updateRecord(Validate_Voter v) throws SQLException
	{		
		sql="update validate_voter set userName = ?, aadhar_Number= ? where voter_Id = ?";		
		pst = conn.prepareStatement(sql);			
		pst.setString(1,v.getUserName());
		pst.setString(2,v.getAadhar_Number());
		pst.setString(3,v.getVoter_id());
		return pst.executeUpdate();
	}
	public Integer deleteRecord(Validate_Voter v) throws SQLException
	{
		sql="delete from validate_voter where voter_Id=?";
		pst = conn.prepareStatement(sql);
		pst.setString(1, v.getVoter_id());
		return pst.executeUpdate();
	}
	public Validate_Voter findRecord(Validate_Voter v) throws SQLException
	{
		sql="select *  from validate_voter where voter_Id=?";
		pst = conn.prepareStatement(sql);
		pst.setString(1, v.getVoter_id());
		//pst.setString(2, v.getAadhar_Number());
		rs=pst.executeQuery();
		rs.next();
		v.setUserName(rs.getString(1));
		v.setVoter_id(rs.getString(2));
		v.setAadhar_Number(rs.getString(3));
		return v;
	}
	public List<Validate_Voter> findAll() throws SQLException
	{
		sql = "select * from validate_voter";
		pst = conn.prepareStatement(sql);
		rs=pst.executeQuery();
		List<Validate_Voter> l = new ArrayList<Validate_Voter>();		
		while(rs.next())
		{
			Validate_Voter v = new Validate_Voter();
			v.setUserName(rs.getString(1));
			v.setVoter_id(rs.getString(2));
			v.setAadhar_Number(rs.getString(3));
			l.add(v);
		}
		return l;
	}
	public Integer validate(Validate_Voter vv) throws SQLException
	{
		sql="select *  from validate_voter where voter_Id=? and aadhar_Number= ?";
		pst = conn.prepareStatement(sql);
		pst.setString(1, vv.getVoter_id());
		pst.setString(2, vv.getAadhar_Number());
		rs=pst.executeQuery();
		if(rs.next())
		{
		findResult = findResult + 1;
		}
		return findResult;
	}
}
