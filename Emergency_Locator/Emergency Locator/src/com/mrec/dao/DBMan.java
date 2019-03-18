package com.mrec.dao;

import java.sql.*;

public class DBMan {
	static Connection con;
	static Statement st;
	static PreparedStatement ps;
	static{
		try{
			Class.forName("com.ibm.db2.jcc.DB2Driver");
			String cns = "jdbc:db2://"+Props.host+":"+Props.port+"/"+Props.db;
			con = DriverManager.getConnection(cns, Props.user,Props.pass);
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}
	public static boolean addFinReq(String username,String email, String contact,String address,String city, String pincode,String amount) throws Exception
	{
		String sql="insert into finreq values(?,?,?,?,?,?,?)";
		ps=con.prepareStatement(sql);
		ps.setString(1, username);
		ps.setString(2, email);
		ps.setString(3, contact);
		ps.setString(4, address);
		ps.setString(5, city);
		ps.setString(6, pincode);
		ps.setString(7, amount);
		if(ps.executeUpdate()==1)
			return true;
		
		else
			return false;	 
	}
	public static boolean addDisaster(String name,String area, String city,String state,String cperson, String cnumber) throws Exception
	{
		java.util.Date d1 = new java.util.Date();
		String dt = (d1.getYear()+1900)+"-"+(d1.getMonth()+1)+"-"+(d1.getDate());
		String sql="insert into disaster values('"+name+"','"+area+"','"+city+"','"+state+"','"+cperson+"','"+cnumber+"','"+dt+"')";
	 	ps=con.prepareStatement(sql);
	 	if(ps.executeUpdate()==1)
	 		return true;
	 	else
	 		return false;
	}
	public static ResultSet getFinRequests() throws Exception
	{
	 	return con.createStatement().executeQuery("Select * from finreq");
	}
	public static ResultSet getDisasters() throws Exception
	{
	 	return con.createStatement().executeQuery("Select * from disaster");
	}

 
 
 
}