package com.test.mvc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
		String sql = "SELECT ID, PW, NAME, TEL, EMAIL, KOR, ENG, MAT, (KOR+ENG+MAT) AS TOT, TRUNC((KOR+ENG+MAT)/3,2) AS AVG  FROM MEMBERLIST_VIEW";
		
		// sql 실행 
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		while(rs.next())
		{
			Member member = new Member();
			member.setId(rs.getString("ID"));
			member.setPw(rs.getString("PW"));
			member.setName(rs.getString("NAME"));
			member.setTel(rs.getString("TEL"));
			member.setEmail(rs.getString("EMAIL"));
			member.setKor(Integer.parseInt(rs.getString("KOR")));
			member.setEng(Integer.parseInt(rs.getString("ENG")));
			member.setMat(Integer.parseInt(rs.getString("MAT")));
			member.setTot(Integer.parseInt(rs.getString("TOT")));
			member.setAvg(Double.parseDouble(rs.getString("AVG")));
			
			result.add(member);
			
			
		}
		
		rs.close();
		pstmt.close();
		conn.close();
		
		
		return result;
	}

	@Override
	public int add(Member member) throws SQLException
	{
		
		// 결과값 반환 변수 
		int result = 0;
		
		// 커넥션 
		Connection conn = dataSource.getConnection();
		
		// 쿼리문 구성
		String sql = "INSERT INTO MEMBERLIST(ID, PW, NAME, TEL, EMAIL) VALUES(?, CRYPTPACK.ENCRYPT(?, ?), ?, ?, ?)";
		
		// sql 실행 
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, member.getId());
		pstmt.setString(2, member.getPw());
		pstmt.setString(3, member.getPw());
		pstmt.setString(4, member.getName());
		pstmt.setString(5, member.getTel());
		pstmt.setString(6, member.getEmail());
		
		result = pstmt.executeUpdate();
		
		// 연결 종료
		pstmt.close();
		conn.close();
		
		// 반환
		return result;
	}

	@Override
	public int delete(String id) throws SQLException
	{
		// 결과값 반환 변수 
		int result = 0;
		
		// 커넥션 
		Connection conn = dataSource.getConnection();
		
		// 쿼리문 구성
		String sql = "DELETE FROM MEMBERLIST WHERE ID = ?";
		
		// sql 실행 
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, id);
		
		result = pstmt.executeUpdate();
		
		// 연결 종료
		pstmt.close();
		conn.close();
		
		// 반환
		return result;
	}

	@Override
	public int modify(Member member) throws SQLException
	{
		// 결과값 반환 변수 
		int result = 0;
		
		// 커넥션 
		Connection conn = dataSource.getConnection();
		
		// 쿼리문 구성
		String sql = "UPDATE MEMBERLIST SET PW = CRYPTPACK.ENCRYPT(?, ?), NAME = ?, TEL=?, EMAIL = ? WHERE ID = ?";
		
		// sql 실행 
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		
		pstmt.setString(1, member.getPw());
		pstmt.setString(2, member.getPw());
		pstmt.setString(3, member.getName());
		pstmt.setString(4, member.getTel());
		pstmt.setString(5, member.getEmail());
		pstmt.setString(6, member.getId());
		
		result = pstmt.executeUpdate();
		
		// 연결 종료
		pstmt.close();
		conn.close();
		
		// 반환
		return result;
	}

	@Override
	public Member serachId(String id) throws SQLException
	{
		// 결과값 반환 변수 
		Member member = new Member();
		
		// 커넥션 
		Connection conn = dataSource.getConnection();
		
		// 쿼리문 구성
		String sql = "SELECT ID, PW, NAME, TEL, EMAIL, KOR, ENG, MAT, (KOR+ENG+MAT) AS TOT, TRUNC((KOR+ENG+MAT)/3,2) AS AVG  FROM MEMBERLIST_VIEW WHERE ID=?";
		
		// sql 실행 
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, id);
		
		ResultSet rs = pstmt.executeQuery();
		
		while(rs.next())
		{
			member.setId(rs.getString("ID"));
			member.setPw(rs.getString("PW"));
			member.setName(rs.getString("NAME"));
			member.setTel(rs.getString("TEL"));
			member.setEmail(rs.getString("EMAIL"));
			member.setKor(Integer.parseInt(rs.getString("KOR")));
			member.setEng(Integer.parseInt(rs.getString("ENG")));
			member.setMat(Integer.parseInt(rs.getString("MAT")));
			member.setTot(Integer.parseInt(rs.getString("TOT")));
			member.setAvg(Double.parseDouble(rs.getString("AVG")));
		}
		
		// 연결 종료
		rs.close();
		pstmt.close();
		conn.close();
		
		// 반환
		return member;
		
	}

	@Override
	public String login(String id, String pw) throws SQLException
	{
		String result =null;
		
		Connection conn = dataSource.getConnection();
		String sql ="SELECT NAME\r\n" + 
				"FROM MEMBERLIST\r\n" + 
				"WHERE ID = ? AND PW = CRYPTPACK.ENCRYPT(?, ?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, pw);
		pstmt.setString(3, pw);
		
		ResultSet rs = pstmt.executeQuery();
		
		while(rs.next())
		{
			result  = rs.getString("NAME");
		}
		
		conn.close();
		pstmt.close();
		rs.close();
		
		return result;
		
	}
	
	
	
	
	
	
	

}
