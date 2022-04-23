package com.perfume.exam.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.perfume.exam.service.PerfumeService;
import com.perfume.exam.service.dao.PerfumeDAO;
import com.perfume.exam.vo.PerfumeVO;

@Service("perfumeService")
public class PerfumeServiceImpl implements PerfumeService {
    
	@Autowired
	private PerfumeDAO perfumeDAO;
	
	
	@Override
	@Transactional
	public List<PerfumeVO> selectPerfumeList() throws Exception {
		
		return perfumeDAO.selectPerfumeList();
	}

}
