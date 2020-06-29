package com.test.mvc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.sql.DataSource;

public class MemberRecordDAO 
{
	private DataSource dataSource;

	public DataSource getDataSource()
	{
		return dataSource;
	}
	
	public ArrayList<MemberRecord> lists() throws SQLException
	{
		Connection conn = dataSource.getConnection();
		ArrayList<MemberRecord> result = new ArrayList<MemberRecord>();
		
		String sql = "SELECT KOR,ENG,MAT,ID FROM MEMBERRECORD";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		while(rs.next())
		{
			MemberRecord record = new MemberRecord();
			
			record.setId(rs.getString("ID"));
			record.setKor(rs.getInt("KOR"));
			record.setEng(rs.getInt("ENG"));
			record.setMat(rs.getInt("MAT"));
			
			result.add(record);
		}
		
		rs.close();
		pstmt.close();
		conn.close();
		
		return result;
	}
	
	public int add(MemberRecord record) throws SQLException
	{
		int result = 0;
		
		Connection conn = dataSource.getConnection();
		
		String sql = "INSERT INTO MEMBERRECORD(KOR, ENG, MAT, ID) VALUES(?, ?, ?, ?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, record.getKor());
		pstmt.setInt(2, record.getEng());
		pstmt.setInt(3, record.getMat());
		pstmt.setString(4, record.getId());
		
		result = pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
		
		return result;
	}
	
	
	public int delete(String id) throws SQLException
	{
		Connection conn = dataSource.getConnection();
		int result = 0;
		
		String sql = "DELETE FROM MEMBERRECORD WHERE ID= ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		result = pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
		
		return result;
		
	}
	
	public int modify(MemberRecord record) throws SQLException
	{
		Connection conn = dataSource.getConnection();
		int result = 0;
		
		String sql = "UPDATE MEMBERRECORD SET KOR = ?,ENG=?,MAT=? WHERE ID= ? ";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, record.getKor());
		pstmt.setInt(2, record.getEng());
		pstmt.setInt(3, record.getMat());
		pstmt.setString(4, record.getId());
		
		result = pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
		
		return result;
	}
}



















