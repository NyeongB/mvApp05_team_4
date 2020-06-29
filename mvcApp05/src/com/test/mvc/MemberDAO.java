package com.test.mvc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.sql.DataSource;

public class MemberDAO implements IMemberDAO
{
	private DataSource dataSource;
	
	
	public void setDataSource(DataSource dataSource)
	{
		this.dataSource = dataSource;
	}

	@Override
	public ArrayList<Member> lists() throws SQLException
	{	
		// 결과값 반환 변수 
		ArrayList<Member> result = new ArrayList<Member>();
		
		// 커넥션 
		Connection conn = dataSource.getConnection();
		
		// 쿼리문 구성
		String sql = "";
		
		// sql 실행 
		PreparedStatement pstmt = conn.prepareStatement(sql);
		return null;
	}

	@Override
	public int add(Member member) throws SQLException
	{
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(String id) throws SQLException
	{
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int modify(Member member) throws SQLException
	{
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Member serachId(String id) throws SQLException
	{
		// TODO Auto-generated method stub
		return null;
	}

}
