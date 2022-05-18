package com.perfume.exam.service.dao;

import java.util.List;

import com.perfume.exam.vo.PerfumeVO;
import com.perfume.exam.vo.ReviewVO;

public interface PerfumeDAO {
	List<PerfumeVO> selectPerfumeList() throws Exception;
	List<PerfumeVO> selectGoodsList() throws Exception;
	List<PerfumeVO> selectCategoryList(String param) throws Exception;
	List<PerfumeVO> selectName(String param) throws Exception;
	public void addProduct(PerfumeVO vo) throws Exception;
	
	// 제품번호, 이름 조회
	public PerfumeVO getProductIdName(int product_id);
	
}
