package dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import modal.Candidate;

	public class CandidateDao {
		Connection conn;
		PreparedStatement pst;
		String sql;
		ResultSet rs ;
		public CandidateDao() throws Exception
		{
		 conn=Myconnection.getConnection();
		}
		
		public Integer addRecord(Candidate c) throws SQLException
		{
			sql="insert into candidate values(?,?,?,?,?,?,?,?,?,?)";
			pst = conn.prepareStatement(sql);		
			pst.setString(1,c.getUserName());
			pst.setString(2,c.getCandEnrollId());
			pst.setString(3,c.getParty_Affiliation());
			pst.setString(4,c.getAadhar_Number());
			pst.setString(5,c.getGender());
			pst.setString(6,c.getDob());
			pst.setString(7,c.getMobile_No());
			pst.setString(8,c.getEmail_Id());
			pst.setString(9,c.getUser_Password());
			pst.setString(10,c.getAddress());
			return pst.executeUpdate();
		}
		public Integer updateRecord(Candidate c) throws SQLException
		{
			
			sql="update candidate userName = ?,party_Affiliation=?,aadhar_Number= ?,gender= ?,dob= ?,mobile_No= ?,email_Id= ?,user_Password= ?,"
					+ "address= ?,where candEnrollId = ?";		
			pst = conn.prepareStatement(sql);			
			pst.setString(1,c.getUserName());
			pst.setString(2,c.getParty_Affiliation());
			pst.setString(3,c.getAadhar_Number());
			pst.setString(4,c.getGender());
			pst.setString(5,c.getDob());
			pst.setString(6,c.getMobile_No());
			pst.setString(7,c.getEmail_Id());
			pst.setString(8,c.getUser_Password());
			pst.setString(9,c.getAddress());
			pst.setString(10,c.getCandEnrollId());
			return pst.executeUpdate();
		}
		public Integer deleteRecord(Candidate c) throws SQLException
		{
			sql="delete from candidate where candEnrollId=?";
			pst = conn.prepareStatement(sql);
			pst.setString(1, c.getCandEnrollId());
			return pst.executeUpdate();
		}
		public Candidate findRecord(Candidate c) throws SQLException
		{
			sql="select *  from candidate where candEnrollId=?";
			pst = conn.prepareStatement(sql);
			pst.setString(1, c.getCandEnrollId());
			rs=pst.executeQuery();
			rs.next();
			c.setUserName(rs.getString(1));
			c.setCandEnrollId(rs.getString(2));
			c.setParty_Affiliation(rs.getString(3));
			c.setAadhar_Number(rs.getString(4));
			c.setGender(rs.getString(5));
			c.setDob(rs.getString(6));
			c.setMobile_No(rs.getString(7));
			c.setEmail_Id(rs.getString(8));
			c.setUser_Password(rs.getString(9));
			c.setAddress(rs.getString(10));
			return c;
		}
		public List<Candidate> findAll() throws SQLException
		{
			/*akrati
			sql = "select * from candidate where candidate.candEnrollId=(select * from validcandidates )"; old query*/
			sql = "select * from candidate";
			pst = conn.prepareStatement(sql);
			rs=pst.executeQuery();
			List<Candidate> l = new ArrayList<Candidate>();
			
			while(rs.next())
			{
				Candidate c = new Candidate();
				c.setUserName(rs.getString(1));
				c.setCandEnrollId(rs.getString(2));
				c.setParty_Affiliation(rs.getString(3));
				c.setAadhar_Number(rs.getString(4));
				c.setGender(rs.getString(5));
				c.setDob(rs.getString(6));
				c.setMobile_No(rs.getString(7));
				c.setEmail_Id(rs.getString(8));
				c.setUser_Password(rs.getString(9));
				c.setAddress(rs.getString(10));
				l.add(c);
			}
			return l;
		}

	}
