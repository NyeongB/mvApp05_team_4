package com.test.mvc;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class MemberRecordUpdateController implements Controller
{
	private IMemberRecord dao;
	
	public void setDao(IMemberRecord dao)
	{
		this.dao = dao;
	}

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		ModelAndView mav = new ModelAndView();
		
		//memberRecordUpdatForm 으로부터 수신
		String id = request.getParameter("id");
		String kor = request.getParameter("kor");
		String eng = request.getParameter("eng");
		String mat = request.getParameter("mat");
		System.out.println(id);
		System.out.println(kor);
		System.out.println(eng);
		System.out.println(mat);
		
		try
		{
			MemberRecord record = new MemberRecord();
			
			
			record.setKor(Integer.parseInt(kor));
			record.setEng(Integer.parseInt(eng));
			record.setMat(Integer.parseInt(mat));
			record.setId(id);
			
			dao.modify(record);
			
	
			mav.setViewName("redirect:memberrecord.action");
			
			
			
			
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		
		
		return mav;
	}
	

}
