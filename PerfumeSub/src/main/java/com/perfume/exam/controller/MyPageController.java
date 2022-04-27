package com.perfume.exam.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/mypage/")
@Controller
public class MyPageController {

	@RequestMapping("myreview")
	public String myreview(Model model,HttpServletRequest req,HttpServletResponse res) throws Exception {
		
		return "root.mypage.myreview";
	}
				
	@RequestMapping("orderlist")
	public String orderlist(Model model,HttpServletRequest req,HttpServletResponse res) throws Exception {
		
		return "root.mypage.orderlist";
	}
	
	@RequestMapping("request")
	public String request(Model model,HttpServletRequest req,HttpServletResponse res) throws Exception {
		
		return "root.mypage.request";
	}
	
	@RequestMapping("wishlist")
	public String wishlist(Model model,HttpServletRequest req,HttpServletResponse res) throws Exception {
		
		return "root.mypage.wishlist";
	}
	
	@RequestMapping("myedit")
	public String myedit(Model model,HttpServletRequest req,HttpServletResponse res) throws Exception {
		
		return "root.mypage.myedit";
	}
}



