package com.test.mvc;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.sun.org.apache.regexp.internal.recompile;

public class MemberDeleteController implements Controller
{
	
	private IMemberDAO memberDAO;
	
	
	
	
	public void setMemberDAO(IMemberDAO memberDAO)
	{
		this.memberDAO = memberDAO;
	}




	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		ModelAndView mav = new ModelAndView();

		String id = request.getParameter("id");
		System.out.println(id);
		try
		{
			memberDAO.delete(id);
			mav.setViewName("redirect:memberlist.action");
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		return mav; 
	}

}
