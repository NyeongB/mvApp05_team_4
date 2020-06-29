package com.test.mvc;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class MemberTotalListController implements Controller
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
		
		ArrayList<Member> memberList = new ArrayList<Member>();
		
		
		try
		{
			memberList = memberDAO.lists();
			mav.addObject("memberList",memberList);
			mav.setViewName("MemberTotalList");
			
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		return mav;
	}

}
