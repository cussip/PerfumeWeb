package com.perfume.exam.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.perfume.exam.service.ReviewService;
import com.perfume.exam.service.dao.ReviewDAO;
import com.perfume.exam.vo.ReviewVO;

@Service
public class ReviewServiceImpl implements ReviewService{
	@Autowired
	private ReviewDAO reviewDAO;
	
	@Override
	public int enrollReview(ReviewVO rvo) {
		
		int result = reviewDAO.enrollReview(rvo);
		
		return result;
		
	}
	
	// 상품리뷰 목록 : detail(제품상세) 페이지에 표시
	/*
	@Override
	public List<ReviewVO> getReviewList() {
		
		return reviewDAO.getReviewList();
	}
	*/
}
