package dao;
	import java.sql.*;
	import java.util.Properties;
	import java.io.*;

public class Myconnection{
	
	private static Connection conn;
	
	public static Connection getConnection() throws ClassNotFoundException,SQLException,IOException
	{
	FileReader fr = new FileReader("G:\\MyInfo.properties");
	Properties p = new Properties();
	p.load(fr);
	String driverName = p.getProperty("driverName");
	String url = p.getProperty("url");
	String uname = p.getProperty("uname");
	String upass = p.getProperty("upass");

	if(conn==null)
	{
	Class.forName(driverName);
	conn = DriverManager.getConnection(url,uname,upass);
	}
	return conn;
	}
	}

	

