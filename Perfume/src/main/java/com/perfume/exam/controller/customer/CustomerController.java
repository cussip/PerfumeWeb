package com.perfume.exam.controller.customer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class CustomerController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		System.out.println("call controller");
		
		ModelAndView mv = new ModelAndView("customer.notice");
		mv.addObject("title", "spring title test!");
		mv.setViewName("notice.jsp");
		
		return mv;
	}

}
