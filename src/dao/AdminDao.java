package dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import modal.AdminLoginModal;

public class AdminDao {
		Connection conn;
		PreparedStatement pst;
		String sql;
		ResultSet rs ;
		
		public  AdminDao()throws  Exception {
		 conn=Myconnection.getConnection();
		}
		
		public Integer addRecord(AdminLoginModal alm) throws SQLException
		{
			String enrol=alm.getCenrollId();
			sql="insert into validCandidates values(?) ";
			pst = conn.prepareStatement(sql);		
			pst.setString(1,alm.getCenrollId());
			return pst.executeUpdate();
		}
	


}
