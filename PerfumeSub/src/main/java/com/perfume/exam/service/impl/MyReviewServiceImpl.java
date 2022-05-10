package com.perfume.exam.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.perfume.exam.service.MyReviewService;
import com.perfume.exam.service.dao.MyReviewDAO;
import com.perfume.exam.vo.MyReviewVO;

@Service("myReviewService")
public class MyReviewServiceImpl implements MyReviewService {
	
	@Autowired
	private MyReviewDAO myReviewDAO;
	
	@Override
	public List<MyReviewVO> selectReviewList() throws Exception {
		
		return myReviewDAO.selectReviewList();
	}
	
	@Override
	public void enrollReview(MyReviewVO myreview) {
		
		myReviewDAO.enrollReview(myreview);
		
	}
}
