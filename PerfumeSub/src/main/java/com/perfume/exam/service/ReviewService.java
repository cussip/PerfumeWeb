package com.perfume.exam.service;

import java.util.List;

import com.perfume.exam.vo.ReviewVO;

public interface ReviewService {

	// 상품리뷰 등록
	public int enrollReview(ReviewVO rvo);
	
	// 상품리뷰 목록 : detail(제품상세) 페이지에 표시
	// public List<ReviewVO> getReviewList();
	
}
