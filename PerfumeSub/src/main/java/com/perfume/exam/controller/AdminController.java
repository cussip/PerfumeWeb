package com.perfume.exam.controller;

import java.sql.SQLException;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.perfume.exam.entity.Board;
import com.perfume.exam.service.AdminService;

@Controller
@RequestMapping("/admin/")
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	@RequestMapping("boardwrite")
	public String insertboard(Model model) throws ClassNotFoundException, SQLException {
		
		/*
		 * List<Event> endList = eventService.getEndList(); List<Event> ingList =
		 * eventService.getIngList(); List<Board> winnerList =
		 * eventService.getWinnerList();
		 * 
		 * model.addAttribute("endList", endList); model.addAttribute("ingList",
		 * ingList); model.addAttribute("winnerList", winnerList);
		 */
		
		return "root.admin.boardwrite";
	}
	
	@RequestMapping("bwsubmit")
	public String bwsubmit(@ModelAttribute Board board) throws SQLException {
		
		adminService.bwsubmit(board);
		
		return "root.customer.notice";
	}
	
}








