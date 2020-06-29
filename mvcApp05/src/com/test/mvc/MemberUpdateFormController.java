package com.test.mvc;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class MemberUpdateFormController implements Controller
{
	private IMemberDAO dao;
	
	public void setDao(IMemberDAO dao)
	{
		this.dao = dao;
	}
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		ModelAndView mav = new ModelAndView();
		Member member = new Member();
		String id =request.getParameter("id");
		
		
		try
		{
			member = dao.serachId(id);
			
			mav.addObject(member);
			mav.setViewName("MemberUpdateForm");
			
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
	
		
		
		return mav;
	}

}
