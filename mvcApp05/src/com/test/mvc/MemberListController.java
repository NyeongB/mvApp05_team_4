/*==================================
	HelloController.java
	- 사용자 정의 컨트롤러 클래스
==================================*/

package com.test.mvc;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

// ※ Spring 이 제공하는 『compile』 인터페이스를 구현함으로써
//    사용자 정의 컨트롤러 클래스를 구성한다.
public class MemberListController implements Controller
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
		ArrayList<Member> memberList = new ArrayList<Member>();
		
		
		
		//DAO 로 부터 학생 리스트 수신
		memberList = dao.lists();
		
		mav.addObject("memberList",memberList);
		mav.setViewName("MemberList");
		
		
		
		return mav;
	}

}
