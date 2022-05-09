package com.perfume.exam.service;

import java.util.List;

import com.perfume.exam.vo.MyReviewVO;

public interface MyReviewService {
	
	List<MyReviewVO> selectReviewList() throws Exception;
	
}
