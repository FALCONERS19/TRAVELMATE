package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import Model.RegModel;



public class RegDAO {
	public int insert(RegModel req)
	{
		String fname=req.getFname();
		String lname=req.getLname();
		String email=req.getEmail();
		String idProof=req.getIdProof();
		String gender=req.getGender();
		String dob=req.getDob();
		String add=req.getAdd();
		String mob=req.getMob();
		String emphone=req.getEmphone();
		String userid=req.getUserid();
		String pass=req.getPassword();
		int result=0;
		try
		{
		
		DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
		
		
		 
		String sql="insert into Project.Registration2 values(?,?,?,?,?,?,?,?,?,?,?)";
		
		PreparedStatement pre=con.prepareStatement(sql);
		
		pre.setString(1, fname);
		pre.setString(2, lname);
		pre.setString(3, email);
		pre.setString(4, idProof);
		pre.setString(5, gender);
		pre.setString(6, dob);
		
		pre.setString(7, add);
		
		pre.setString(8, mob);
		pre.setString(9, emphone);
		pre.setString(10, userid);
		pre.setString(11, pass);
		
		result=pre.executeUpdate();
		
		}
		
		catch(Exception e)
		{
			
		}
		return result;
	}
}


