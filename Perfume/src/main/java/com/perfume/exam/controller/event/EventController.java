package com.perfume.exam.controller.event;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class EventController implements Controller{

	@RequestMapping("/event/event")	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		System.out.println("*** call Event Controller ***");
		
		ModelAndView mv = new ModelAndView("root.event.event");
		mv.addObject("title", "spring title test!");
		mv.setViewName("root.event.event");
		
		return mv;
	}

}
