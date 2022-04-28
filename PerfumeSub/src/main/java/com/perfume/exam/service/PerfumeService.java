package com.perfume.exam.service;

import java.util.List;

import com.perfume.exam.vo.PerfumeVO;



public interface PerfumeService {
	List<PerfumeVO> selectPerfumeList() throws Exception;
	List<PerfumeVO> selectGoodsList() throws Exception;	
	List<PerfumeVO> selectCategoryList(String param) throws Exception;
	List<PerfumeVO> selectName(String param) throws Exception;
}
