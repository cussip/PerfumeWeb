package com.perfume.exam.controller;

import java.io.File;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.perfume.exam.service.AdminService;
import com.perfume.exam.vo.BoardVO;
import  com.perfume.exam.vo.EventVO;

@Controller
@RequestMapping("/admin/")
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private ServletContext ctx;
	
	@GetMapping("board")
	public String boardList(Model model) throws Exception {
		
		
		List<BoardVO> noticeList = adminService.getNoticeList();
		List<BoardVO> faqList = adminService.getFAQList();
		String benefit = adminService.getBenefit();
		
		model.addAttribute("noticeList", noticeList);
		model.addAttribute("faqList", faqList);
		model.addAttribute("benefit", benefit);
		
		return "admin.board";
	}
	
	@PostMapping("board")
	public String boardInsert(@ModelAttribute BoardVO board) throws Exception {

		adminService.boardInsert(board);
		
		String cate = "NOTICE";
		if(board.getCategory().equals("NOTICE")) {
			cate = "board?type=NOTICE";
		} else if(board.getCategory().equals("FAQ")) {
			cate = "board?type=FAQ";
		} else if(board.getCategory().equals("WINNER")) {
			cate = "event?type=WINNER";
		}
		
		return "redirect:" + cate;
	}	
	
	@PostMapping("boardUpdate")
	public String boardUpdate(@ModelAttribute BoardVO board) throws Exception {
		
		adminService.boardUpdate(board);
		
		String cate = "NOTICE";
		if(board.getCategory().equals("NOTICE")) {
			cate = "board?type=NOTICE";
		} else if(board.getCategory().equals("FAQ")) {
			cate = "board?type=FAQ";
		} else if(board.getCategory().equals("WINNER")) {
			cate = "event?type=WINNER";
		}
		
		return "redirect:" + cate;
	}
	
	@RequestMapping("boardDelete")
	public String boardDelete(@ModelAttribute BoardVO board) throws Exception {
		
		adminService.boardDelete(board);
		
		String cate = "NOTICE";
		if(board.getCategory().equals("NOTICE")) {
			cate = "board?type=NOTICE";
		} else if(board.getCategory().equals("FAQ")) {
			cate = "board?type=FAQ";
		} else if(board.getCategory().equals("WINNER")) {
			cate = "event?type=WINNER";
		}
		
		return "redirect:" + cate;		
	}
	
	@PostMapping("beneImgAdd")
	public String beneImgAdd(MultipartFile image) throws Exception {	

		String fileName = image.getOriginalFilename();
		String webPath = "resources/img/customer";
		String realPath = ctx.getRealPath(webPath);
		
		File savePath = new File(realPath);
		if(!savePath.exists()) {
			savePath.mkdirs();
		}
				
		realPath += File.separator + fileName;
		File saveFile = new File(realPath);		
		image.transferTo(saveFile);
		
		adminService.beneSubmit(fileName);
		
		return "redirect:board?type=BENEFIT";
	}
	
	@RequestMapping("event")
	public String eventList(Model model) throws Exception {
		
		List<BoardVO> winnerList = adminService.getWinnerList();
		List<EventVO> eventList = adminService.getEventList();
		
		model.addAttribute("winnerList", winnerList);
		model.addAttribute("eventList", eventList);
			
		return "admin.event";
	}
	
	@PostMapping("eventInsert")
	public String eventUpdate(@ModelAttribute EventVO event) throws Exception {
		
		adminService.eventInsert(event);

		return "redirect:board?type=EVENT";		
	}
}








