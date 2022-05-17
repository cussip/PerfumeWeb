package com.perfume.exam.service.dao;

import java.util.List;

import com.perfume.exam.vo.PerfumeVO;

public interface PerfumeDAO {
	List<PerfumeVO> selectPerfumeList() throws Exception;
	List<PerfumeVO> selectGoodsList() throws Exception;
	List<PerfumeVO> selectCategoryList(String param) throws Exception;
	List<PerfumeVO> selectName(String param) throws Exception;
	public void addProduct(PerfumeVO vo) throws Exception;
	
	// 상품 id, 이름 가져오기
	public PerfumeVO getProductIdName(int product_id);
	
	
}
