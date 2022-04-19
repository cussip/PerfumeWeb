package com.perfume.exam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

/**
 * Handles requests for the application home page.
 */

public class HomeController implements Controller {
	
	@RequestMapping("/perfume/home")
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		
		ModelAndView mv = new ModelAndView("root.perfume.home");
		mv.setViewName("root.perfume.home");		
		return mv;
	}
	
}

