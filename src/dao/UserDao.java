
package dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import dao.Myconnection;
import modal.Usermodal;
import modal.adminmodal;
import modal.candmodal;

public class UserDao {

	 String sql;
	 ResultSet rs;
	 Connection conn;
	PreparedStatement pst;
    public UserDao() throws Exception{
	 conn=Myconnection.getConnection();
	 }
   public Boolean validate(Usermodal user)throws Exception{
	  sql="select * from  voter where Voter_id=? and user_Password=?";
	  pst=conn.prepareStatement(sql);
	  pst.setString(1, user.getVid());
	  pst.setString(2, user.getUpass());
	  rs=pst.executeQuery();
	  if(rs.next()) {
		  return true; 
	  }
	  else {
		  return false;
	  }
	  }
	public Boolean validateadmin(adminmodal user)throws Exception{
		  sql="select * from admin where aname=? and apass=?";
		  pst=conn.prepareStatement(sql);
		  pst.setString(1, user.getAname());
		  pst.setInt(2,user.getApass());
		  rs=pst.executeQuery();
		  if(rs.next()) {
			  return true; 
		  }
		  else {
			  return false;
		    }
        }
	public Boolean validatecandi(candmodal cand)throws Exception{
		  sql="select * from candidate where candEnrollId=? and user_Password=?";
		  pst=conn.prepareStatement(sql);
		  pst.setString(1, cand.getCeid());
		  pst.setString(2, cand.getCpass());
		  rs=pst.executeQuery();
		  if(rs.next()) {
			  return true; 
		  }
		  else {
			  return false;
		    }
      }
	public int  updatename(adminmodal user ) throws IOException,SQLException {
		sql= "update admin set aname=? where apass=?";
		pst=conn.prepareStatement(sql);
		pst.setString(1,user.getAname());
		pst.setInt(2,user.getApass());
		return  pst.executeUpdate();
		
	}
	
	public int updatepass( adminmodal user)throws IOException,SQLException {
		sql="update admin set apass=? where aname=?";
		pst=conn.prepareStatement(sql);
		pst.setInt(1,user.getApass());
		pst.setString(2,user.getAname());
		return pst.executeUpdate();
		
		
	}
}

