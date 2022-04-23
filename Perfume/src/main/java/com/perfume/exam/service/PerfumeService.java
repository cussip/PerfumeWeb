package com.perfume.exam.service;

import java.util.List;

import com.perfume.exam.vo.PerfumeVO;



public interface PerfumeService {
	List<PerfumeVO> selectPerfumeList() throws Exception;
}
