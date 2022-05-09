package com.perfume.exam.controller.mypage;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.perfume.exam.service.MyReviewService;

import com.perfume.exam.vo.MyReviewVO;


@Controller
public class MyReviewController {
	
	private static final Logger log = LoggerFactory.getLogger(MyReviewController.class);
	
	@Autowired
	private MyReviewService myReviewService;
	
	// 나의리뷰 목록 페이지 접속
	@GetMapping("/myreview")
	public String myReviewGET(Model model,HttpServletRequest request
		  	,HttpServletResponse response) throws Exception {
		
		log.info("나의 리뷰목록 페이지 진입했습니다");
		
		List<MyReviewVO> reviews = myReviewService.selectReviewList();
		model.addAttribute("reviews", reviews);
		
		return "root.mypage.myreview";
		
	}
	
	// 나의리뷰 등록 페이지 접속
	
	@GetMapping("/enrollreview")
	public String enrollReviewGET() {
		
		log.info("나의 리뷰등록 페이지 진입했습니다");
		
		return "root.mypage.reviewenroll";
	}
	
	
	
}
