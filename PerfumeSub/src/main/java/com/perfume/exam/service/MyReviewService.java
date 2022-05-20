package com.perfume.exam.service;

import java.util.List;

import com.perfume.exam.vo.MyReviewVO;
import com.perfume.exam.vo.ReviewVO;

public interface MyReviewService {
	
	List<ReviewVO> selectReviewList(String id) throws Exception;
	
	
	public void enrollReview(MyReviewVO myreview);
	
	// public MyReviewVO getProductIdName(int productId);
}
