package com.test.mvc;

import java.sql.SQLException;
import java.util.ArrayList;

public interface IMemberRecord
{
	public ArrayList<MemberRecord> lists() throws SQLException;
	public int add(MemberRecord record) throws SQLException;
	public int delete(String id) throws SQLException;
	public int modify(MemberRecord record) throws SQLException;
	public MemberRecord serachId(String id) throws SQLException;
}
