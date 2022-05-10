package com.perfume.exam.service.dao;

import java.util.List;

import com.perfume.exam.vo.MyReviewVO;

public interface MyReviewDAO {
	List<MyReviewVO> selectReviewList() throws Exception;
	
	public void enrollReview(MyReviewVO myreview);

	// public MyReviewVO getProductIdName(int productId);
	
}
