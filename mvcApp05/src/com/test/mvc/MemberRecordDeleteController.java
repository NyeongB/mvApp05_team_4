package com.test.mvc;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class MemberRecordDeleteController implements Controller
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
		
		String id = request.getParameter("id");
		
		HttpSession session = request.getSession();
		
		if(session.getAttribute("name")==null)
		{
			mav.setViewName("redirect:loginform.action");
			return mav;
		}
		
		
		try
		{
			
			dao.delete(id);
			
			mav.setViewName("redirect:memberrecord.action");
			
			
			
			
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		return mav;
	}

}
