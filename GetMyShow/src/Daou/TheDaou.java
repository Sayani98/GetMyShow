package Daou;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Bean.TheBean;
import connection.TheConnection;

public class TheDaou 
{
	Connection con = TheConnection.dbcon();
	PreparedStatement ps = null;
	int result;
	ResultSet rs;
	
	public int addMovie(TheBean bobj)
	{
		String sql = "insert into MOVIES values(?,?,?,?,?)";
		try{
			ps = con.prepareStatement(sql);
			ps.setString(1,bobj.getMname());
			ps.setString(2,bobj.getHname());
			ps.setInt(3,bobj.getSeats());
			ps.setDouble(4,bobj.getPrice());
			ps.setString(5,bobj.getTime());
			result = ps.executeUpdate();
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	public int  deleteMovie(TheBean bobj) 
	{
		String sql = "delete from MOVIES where MNAME=?";
		
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, bobj.getMname());
			result=ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return result;
	}
	public int updateTimings(TheBean bobj)
	{
		String sql = "update MOVIES set TIME=? where MNAME=?";
		
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, bobj.getTime());
			ps.setString(2, bobj.getMname());
			result = ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	public int addUser(TheBean bobj)
	{
		String sql = "insert into USERS values(?,?,?,?,?,?,?,?)";
		try {
			ps=con.prepareStatement(sql);
			ps.setString(1, bobj.getName());
			ps.setString(2,bobj.getAddress());
			ps.setString(3,bobj.getEmail());
			ps.setString(4,bobj.getContact());
			ps.setString(5,bobj.getGender());
			ps.setString(6,bobj.getState());
			ps.setString(7,bobj.getCity());
			ps.setString(8,bobj.getPassword());
			result = ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
		
	}
	public String signIn(TheBean bobj)
	{
		String pass = "" ;
		String sql = "select * from USERS where EMAIL=?";
		try{
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, bobj.getEmail());
			rs = ps.executeQuery();
			while(rs.next()){
			pass = rs.getString(8);
			}
		}catch(SQLException e){
			e.printStackTrace();
		}
		return pass;
	}
	public ResultSet viewMovies()
	{
		String sql = " select MNAME,HNAME from MOVIES";
		try{
			PreparedStatement ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
		}catch(SQLException e){
			e.printStackTrace();
		}
		return rs;
		
	}
	public int returnSeats(TheBean bobj)
	{
		int seats = 0;
		String sql = "select * from MOVIES where MNAME=?";
		try{
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, bobj.getMname());
			rs = ps.executeQuery();
			while(rs.next()){
			seats = rs.getInt(3);
			}
		}catch(SQLException e){
			e.printStackTrace();
		}
		return seats;
	}
	public ResultSet movieDetails(TheBean bobj,int n)
	{
		String sql1 = "select * from MOVIES where MNAME=?";
		String sql2 = "update MOVIES set SEATS=? where MNAME=?";
		try{
			PreparedStatement ps1 = con.prepareStatement(sql1);
			PreparedStatement ps2 = con.prepareStatement(sql2);
			ps1.setString(1, bobj.getMname());
			ps2.setInt(1,n);
			ps2.setString(2, bobj.getMname());
			rs = ps1.executeQuery();
			ps2.executeUpdate();
		}catch(SQLException e){
			e.printStackTrace();
		}
		return rs;
	}

}