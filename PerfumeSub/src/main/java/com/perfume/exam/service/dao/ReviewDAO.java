package com.perfume.exam.service.dao;

import com.perfume.exam.vo.ReviewVO;

public interface ReviewDAO {

	// 상품리뷰 등록
	public int enrollReview(ReviewVO rvo);
	
}
