package com.test.mvc;

import java.sql.SQLException;
import java.util.ArrayList;

public interface IMemberDAO
{
	public ArrayList<Member> lists() throws SQLException;
	public int add(Member member) throws SQLException;
	public int delete(String id) throws SQLException;
	public int modify(Member member) throws SQLException;
	public Member serachId(String id) throws SQLException;
	
}
