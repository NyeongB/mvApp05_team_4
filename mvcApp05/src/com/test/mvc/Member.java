package com.test.mvc;

public class Member
{
	private String id, pw, name, tel, email;
	
	private int kor, eng, mat, tot;
	
	private double avg;

	public void setId(String id)
	{
		this.id = id;
	}

	public void setPw(String pw)
	{
		this.pw = pw;
	}

	public void setName(String name)
	{
		this.name = name;
	}

	public void setTel(String tel)
	{
		this.tel = tel;
	}

	public void setEmail(String email)
	{
		this.email = email;
	}

	public void setKor(int kor)
	{
		this.kor = kor;
	}

	public void setEng(int eng)
	{
		this.eng = eng;
	}

	public void setMat(int mat)
	{
		this.mat = mat;
	}

	public String getId()
	{
		return id;
	}

	public String getPw()
	{
		return pw;
	}

	public String getName()
	{
		return name;
	}

	public String getTel()
	{
		return tel;
	}

	public String getEmail()
	{
		return email;
	}

	public int getKor()
	{
		return kor;
	}

	public int getEng()
	{
		return eng;
	}

	public int getMat()
	{
		return mat;
	}

	public int getTot()
	{
		return tot;
	}

	public double getAvg()
	{
		return avg;
	}

	public void setTot(int tot)
	{
		this.tot = tot;
	}

	public void setAvg(double avg)
	{
		this.avg = avg;
	}
	
	
	
	
	
}
