

package dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import modal.Voter;

	public class VoterDao {
		Connection conn;
		PreparedStatement pst;
		String sql;
		ResultSet rs ;
		public VoterDao() throws Exception
		{
		 conn=Myconnection.getConnection();
		}
		
		public Integer addRecord(Voter v) throws SQLException
		{
			sql="insert into voter values(?,?,?,?,?,?,?,?,?)";
			pst = conn.prepareStatement(sql);		
			pst.setString(1,v.getUserName());
			pst.setString(2,v.getVoter_id());
			pst.setString(3,v.getAadhar_Number());
			pst.setString(4,v.getGender());
			pst.setString(5,v.getDob());
			pst.setString(6,v.getMobile_No());
			pst.setString(7,v.getEmail_Id());
			pst.setString(8,v.getUser_Password());
			pst.setString(9,v.getAddress());
			return pst.executeUpdate();
		}
		public Integer updateRecord(Voter v) throws SQLException
		{
			
			sql="update voter userName = ?,aadhar_Number= ?,gender= ?,dob= ?,mobile_No= ?,email_Id= ?,user_Password= ?,"
					+ "address= ?,where voter_id = ?";		
			pst = conn.prepareStatement(sql);			
			pst.setString(1,v.getUserName());
			pst.setString(2,v.getAadhar_Number());
			pst.setString(3,v.getGender());
			pst.setString(4,v.getDob());
			pst.setString(5,v.getMobile_No());
			pst.setString(6,v.getEmail_Id());
			pst.setString(7,v.getUser_Password());
			pst.setString(8,v.getAddress());
			pst.setString(9,v.getVoter_id());
			return pst.executeUpdate();
		}
		public Integer deleteRecord(Voter v) throws SQLException
		{
			sql="delete from voter where voter_id=?";
			pst = conn.prepareStatement(sql);
			pst.setString(1, v.getVoter_id());
			return pst.executeUpdate();
		}
		public Voter findRecord(Voter v) throws SQLException
		{
			sql="select *  from voter where voter_id=?";
			pst = conn.prepareStatement(sql);
			pst.setString(1, v.getVoter_id());
			rs=pst.executeQuery();
			rs.next();
			v.setUserName(rs.getString(1));
			v.setVoter_id(rs.getString(2));
			v.setAadhar_Number(rs.getString(3));
			v.setGender(rs.getString(4));
			v.setDob(rs.getString(5));
			v.setMobile_No(rs.getString(6));
			v.setEmail_Id(rs.getString(7));
			v.setUser_Password(rs.getString(8));
			v.setAddress(rs.getString(9));
			return v;
		}
		public List<Voter> findAll() throws SQLException
		{
			sql = "select * from voter";
			pst = conn.prepareStatement(sql);
			rs=pst.executeQuery();
			List<Voter> l = new ArrayList<Voter>();
			
			while(rs.next())
			{
				Voter v = new Voter();
				v.setUserName(rs.getString(1));
				v.setVoter_id(rs.getString(2));
				v.setAadhar_Number(rs.getString(3));
				v.setGender(rs.getString(4));
				v.setDob(rs.getString(5));
				v.setMobile_No(rs.getString(6));
				v.setEmail_Id(rs.getString(7));
				v.setUser_Password(rs.getString(8));
				v.setAddress(rs.getString(9));
				l.add(v);
			}
			return l;
		}

	}


