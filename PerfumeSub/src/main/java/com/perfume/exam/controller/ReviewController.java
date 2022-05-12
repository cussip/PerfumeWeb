package com.perfume.exam.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.perfume.exam.service.ReviewService;
import com.perfume.exam.vo.ReviewVO;


@RestController
@RequestMapping("/review")
public class ReviewController{
	
	@Autowired
	private ReviewService reviewService;
	
	@PostMapping("/enroll")
	public void enrollReviewPOST(ReviewVO rvo) {
		reviewService.enrollReview(rvo);
	}
	
}
