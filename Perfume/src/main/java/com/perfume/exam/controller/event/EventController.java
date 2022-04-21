package com.perfume.exam.controller.event;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.perfume.exam.entity.Board;
import com.perfume.exam.entity.Event;
import com.perfume.exam.service.EventService;


public class EventController implements Controller{
	
	private EventService eventService;
	
	@Autowired
	@Qualifier("eventService")
	public void setEventService(EventService eventService) {
		this.eventService = eventService;
	}


	@RequestMapping("/event/event")	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		System.out.println("*** call Event Controller ***");
		
		ModelAndView mv = new ModelAndView("root.event.event");
		
		List<Event> endList = eventService.getEndList();
		List<Event> ingList = eventService.getIngList();
		List<Board> winnerList = eventService.getWinnerList();
		mv.addObject("endList", endList);
		mv.addObject("ingList", ingList);
		mv.addObject("winnerList", winnerList);
		mv.setViewName("root.event.event");
		
		return mv;
	}	
}








