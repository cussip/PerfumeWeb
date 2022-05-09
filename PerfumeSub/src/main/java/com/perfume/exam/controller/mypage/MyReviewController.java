package com.perfume.exam.controller.mypage;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.perfume.exam.service.MyReviewService;

import com.perfume.exam.vo.MyReviewVO;


@Controller
public class MyReviewController {
	
	@Autowired
	private MyReviewService myReviewService;
	
	@GetMapping("/myreview")
	public String myReviewGET(Model model,HttpServletRequest request
		  	,HttpServletResponse response) throws Exception {
		
		List<MyReviewVO> reviews = myReviewService.selectReviewList();
		model.addAttribute("reviews", reviews);
		
		return "root.mypage.myreview";
		
	}
	
	
	
	
	
}
