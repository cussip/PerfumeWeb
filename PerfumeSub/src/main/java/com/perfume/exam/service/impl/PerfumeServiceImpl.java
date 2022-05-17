package com.perfume.exam.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.perfume.exam.service.PerfumeService;
import com.perfume.exam.service.dao.PerfumeDAO;
import com.perfume.exam.vo.PerfumeVO;
import com.perfume.exam.vo.ReviewVO;

@Service("perfumeService")
public class PerfumeServiceImpl implements PerfumeService {
    
	@Autowired
	private PerfumeDAO perfumeDAO;
	
	
	@Override
	@Transactional
	public List<PerfumeVO> selectPerfumeList() throws Exception {
		
		return perfumeDAO.selectPerfumeList();
	}
	
	public List<PerfumeVO> selectGoodsList() throws Exception{
		
		return perfumeDAO.selectGoodsList();
	}
		
	@Override
	public List<PerfumeVO> selectCategoryList(String param) throws Exception {
		
		return perfumeDAO.selectCategoryList(param);
	}

	@Override
	public List<PerfumeVO> selectName(String param) throws Exception {
		
		return perfumeDAO.selectName(param);
	}

	@Override
	public void addProduct(PerfumeVO vo) throws Exception {
		
		perfumeDAO.addProduct(vo);
		
	}
	

}
