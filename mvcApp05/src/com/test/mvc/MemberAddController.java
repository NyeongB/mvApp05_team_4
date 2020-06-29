/*==================================
	HelloController.java
	- 사용자 정의 컨트롤러 클래스
==================================*/

package com.test.mvc;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

// ※ Spring 이 제공하는 『compile』 인터페이스를 구현함으로써
//    사용자 정의 컨트롤러 클래스를 구성한다.
public class MemberAddController implements Controller
{

	private IMemberDAO dao;
	
	
	public void setDao(IMemberDAO dao)
	{
		this.dao = dao;
	}


	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		// 액션 코드
		ModelAndView mav = new ModelAndView();
		
		
		String id = request.getParameter("id");
		System.out.println(id);
		String pw = request.getParameter("pw");
		System.out.println(pw);
		String name = request.getParameter("name");
		System.out.println(name);
		String tel = request.getParameter("tel");
		System.out.println(tel);
		String email = request.getParameter("email");
		System.out.println(email);
		
		try
		{
			Member member = new Member();
			member.setId(id);
			member.setPw(pw);
			member.setName(name);
			member.setTel(tel);
			member.setEmail(email);
			dao.add(member);
			mav.setViewName("redirect:memberlist.action");
			
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		
		
		
		return mav;
	}

}
