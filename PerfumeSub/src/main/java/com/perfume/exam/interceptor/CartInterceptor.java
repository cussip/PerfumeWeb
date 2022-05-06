package com.perfume.exam.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;

import com.perfume.exam.model.MemberVO;


public class CartInterceptor implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		HttpSession session = request.getSession();
		
		MemberVO mvo = (MemberVO)session.getAttribute("member");
		System.out.println("전");
		if(mvo == null) {
			 response.sendRedirect(request.getContextPath()+"/perfume/home");
			 System.out.println("들어감");
			 return false;
		} else {
			System.out.println("else");
			return true;
		}
	}

}
