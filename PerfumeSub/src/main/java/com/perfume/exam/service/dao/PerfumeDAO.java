package com.perfume.exam.service.dao;

import java.util.List;

import com.perfume.exam.vo.PerfumeVO;

public interface PerfumeDAO {
	List<PerfumeVO> selectPerfumeList() throws Exception;
	List<PerfumeVO> selectGoodsList() throws Exception;
	List<PerfumeVO> selectCategoryList(String param) throws Exception;
}
