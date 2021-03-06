package com.test.mvc;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class MemberRecordUpdateFormController implements Controller
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
		
		
		try
		{
			//MemberRecordForm 으로 부터 수신
			String id = request.getParameter("id");
			MemberRecord record = new MemberRecord();
			record = dao.serachId(id);
			mav.addObject("record", record);
			mav.setViewName("MemberRecordUpdateForm");
			
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		
		
		return mav;
	}
	

}
