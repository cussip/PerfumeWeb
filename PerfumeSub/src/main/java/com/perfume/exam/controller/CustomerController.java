package com.perfume.exam.controller;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.perfume.exam.entity.Board;
import com.perfume.exam.service.CustomerService;

@Controller
@RequestMapping("/customer/")
public class CustomerController {
		
	@Autowired
	private CustomerService customerService;
	
	@RequestMapping("notice")
	public String notice(Model model) throws ClassNotFoundException, SQLException {
		
		List<Board> noticeList = customerService.getNoticeList();
		List<Board> faqList = customerService.getFAQList();
		
		model.addAttribute("noticeList", noticeList);
		model.addAttribute("faqList", faqList);
		
		return "root.customer.notice";
	}
	
}


