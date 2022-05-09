package com.perfume.exam.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.perfume.exam.service.AdminService;
import com.perfume.exam.vo.BoardVO;
import  com.perfume.exam.vo.EventVO;

@Controller
@RequestMapping("/admin/")
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	@GetMapping("board")
	public String boardList(Model model) throws Exception {
		
		
		List<BoardVO> noticeList = adminService.getNoticeList();
		List<BoardVO> faqList = adminService.getFAQList();
		
		model.addAttribute("noticeList", noticeList);
		model.addAttribute("faqList", faqList);
	
		
		return "admin.board";
	}
	
	@PostMapping("board")
	public String boardInsert(@ModelAttribute BoardVO board) throws Exception {
		
		adminService.boardInsert(board);
		
		return "redirect:board";
	}	
	
	
	@RequestMapping("event")
	public String eventList(Model model) throws Exception {
		
		List<BoardVO> winnerList = adminService.getWinnerList();
		List<EventVO> eventList = adminService.getEventList();
		
		model.addAttribute("winnerList", winnerList);
		model.addAttribute("eventList", eventList);
			
		return "admin.event";
	}
	
	@PostMapping("boardUpdate")
	public String boardUpdate(@ModelAttribute BoardVO board) throws Exception {
		
		adminService.boardUpdate(board);
		
		return "redirect:board";
	}
 	
}








