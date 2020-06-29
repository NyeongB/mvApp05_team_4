package com.test.mvc;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class LoginController implements Controller
{
	
	private IMemberDAO memberDAO;
	
	
	public void setMemberDAO(IMemberDAO memberDAO)
	{
		this.memberDAO = memberDAO;
	}
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		String name = null;
		
		ModelAndView mav = new ModelAndView();
		
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		
		try
		{
			name = memberDAO.login(id, pw);
			
			if(name != null)
			{
				HttpSession session = request.getSession();
				session.setAttribute("name", name);
				mav.setViewName("redirect:membertotallist.action");
			}
			else
			{
			
				mav.setViewName("redirect:loginform.action");
			}
				
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		
		
		
		return mav;
	}

}
