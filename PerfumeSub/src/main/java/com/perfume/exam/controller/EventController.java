package com.perfume.exam.controller;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.perfume.exam.entity.Board;
import com.perfume.exam.entity.Event;
import com.perfume.exam.service.EventService;

@Controller
@RequestMapping("/event/")
public class EventController {
	
	@Autowired
	private EventService eventService;
	
	@RequestMapping("event")
	public String event(Model model) throws ClassNotFoundException, SQLException {
		
		List<Event> endList = eventService.getEndList();
		List<Event> ingList = eventService.getIngList();
		List<Board> winnerList = eventService.getWinnerList();
		
		model.addAttribute("endList", endList);
		model.addAttribute("ingList", ingList);
		model.addAttribute("winnerList", winnerList);
		
		return "root.event.event";
	}
	
	@RequestMapping("detail")
	public String detail(@RequestParam(name="p")String page, Model model) throws ClassNotFoundException, SQLException {
		
		Event event = eventService.getEvent(page);
		
		model.addAttribute("event", event);
		
		return "root.event.detail";
	}
}








