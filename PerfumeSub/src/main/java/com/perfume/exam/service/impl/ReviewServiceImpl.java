package com.perfume.exam.service.impl;

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
	
}
