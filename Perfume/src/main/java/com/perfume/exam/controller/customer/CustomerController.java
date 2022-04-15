package com.perfume.exam.controller.customer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class CustomerController implements Controller {

	@RequestMapping("/customer/notice")
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		System.out.println("*** call Customer Controller ***");
		
		ModelAndView mv = new ModelAndView("root.customer.notice");
		mv.addObject("title", "spring title test!");
		mv.setViewName("root.customer.notice");
		
		return mv;
	}	
	
}
