package com.test.mvc;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class MemberAddFormController implements Controller
{

	private IMemberDAO dao;
	
	public void setDao(IMemberDAO dao)
	{
		this.dao = dao;
	}

	@Override
	public ModelAndView handleRequest(HttpServletRequest arg0, HttpServletResponse arg1) throws Exception
	{
		
		ModelAndView mav = new ModelAndView();		
		
		try
		{
			mav.setViewName("MemberAddForm");
						
			
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		return mav;
	}

	
}
