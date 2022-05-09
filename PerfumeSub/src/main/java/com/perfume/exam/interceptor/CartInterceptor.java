package com.perfume.exam.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;

import com.perfume.exam.mapper.MemberMapper;
import com.perfume.exam.model.MemberVO;
import com.perfume.exam.service.MemberService;
import com.perfume.exam.service.MemberServiceImpl;


public class CartInterceptor implements HandlerInterceptor {
    
	
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
				
		HttpSession session = request.getSession();				
	    
		if(session != null) {
		Object member = session.getAttribute("member");
		  if(member != null) {
			  return true;
		  }
		}
		
		response.sendRedirect(request.getContextPath()+"/perfume/home");
		
		return false;
	}

}
