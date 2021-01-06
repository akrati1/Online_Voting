package dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import modal.Candidate;
import modal.Validate_Candidate;
import modal.Validate_Voter;

public class Validate_Candidate_Dao {
	Connection conn;
	PreparedStatement pst;
	String sql;
	ResultSet rs ;
	Integer findResult=0;
	public Validate_Candidate_Dao() throws Exception
	{
	 conn=Myconnection.getConnection();
	}
	
	public Integer addRecord(Validate_Candidate c) throws SQLException
	{
		sql="insert into valid_candidate values(?,?,?,?)";
		pst = conn.prepareStatement(sql);		
		pst.setString(1,c.getUserName());
		pst.setString(2,c.getCandEnrollId());
		pst.setString(3,c.getParty_Affiliation());
		pst.setString(4,c.getAadhar_Number());
		return pst.executeUpdate();
	}
	public Integer updateRecord(Validate_Candidate c) throws SQLException
	{
		
		sql="update valid_candidate set userName = ?,party_Affiliation=?,aadhar_Number= ? where candEnrollId = ?";		
		pst = conn.prepareStatement(sql);			
		pst.setString(1,c.getUserName());
		pst.setString(2,c.getParty_Affiliation());
		pst.setString(3,c.getAadhar_Number());
		pst.setString(4,c.getCandEnrollId());
		return pst.executeUpdate();
	}
	public Integer deleteRecord(Validate_Candidate c) throws SQLException
	{
		sql="delete from valid_candidate where candEnrollId=?";
		pst = conn.prepareStatement(sql);
		pst.setString(1, c.getCandEnrollId());
		return pst.executeUpdate();
	}
	public Validate_Candidate findRecord(Validate_Candidate c) throws SQLException
	{
		sql="select *  from valid_candidate where candEnrollId=? ";
		pst = conn.prepareStatement(sql);
		pst.setString(1, c.getCandEnrollId());
		rs=pst.executeQuery();
		rs.next();
		c.setUserName(rs.getString(1));
		c.setCandEnrollId(rs.getString(2));
		c.setParty_Affiliation(rs.getString(3));
		c.setAadhar_Number(rs.getString(4));
		return c;
	}
	public List<Validate_Candidate> findAll() throws SQLException
	{
		sql = "select * from valid_candidate";
		pst = conn.prepareStatement(sql);
		rs=pst.executeQuery();
		List<Validate_Candidate> l = new ArrayList<Validate_Candidate>();
		
		while(rs.next())
		{
			Validate_Candidate c = new Validate_Candidate();
			c.setUserName(rs.getString(1));
			c.setCandEnrollId(rs.getString(2));
			c.setParty_Affiliation(rs.getString(3));
			c.setAadhar_Number(rs.getString(4));
			l.add(c);
		}
		return l;
	}
	public Integer validate(Validate_Candidate c) throws SQLException
	{
		sql="select *  from candidate where candEnrollId=? and aadhar_Number= ?";
		pst = conn.prepareStatement(sql);
		pst.setString(1, c.getCandEnrollId());
		pst.setString(2, c.getAadhar_Number());
		rs=pst.executeQuery();
		if(rs.next())
		{
		findResult = findResult + 1;
		}
		return findResult;
	}
}
