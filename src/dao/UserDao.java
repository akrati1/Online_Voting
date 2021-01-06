
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
	
}

