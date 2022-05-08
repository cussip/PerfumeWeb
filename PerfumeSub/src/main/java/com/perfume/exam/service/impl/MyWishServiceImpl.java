package com.perfume.exam.service.impl;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.perfume.exam.service.MyWishService;
import com.perfume.exam.service.dao.MyWishDAO;
import com.perfume.exam.vo.MyWishVO;

@Service("myWishService")
public class MyWishServiceImpl implements MyWishService {
	
	@Autowired
	private MyWishDAO myWishDAO;
	
	
	@Override
	@Transactional
	public List<MyWishVO> selectWishList() throws Exception {
		
		return myWishDAO.selectWishList();
	}	
	
	@Override
	public void deleteWish(int wishId) throws Exception{
	
		myWishDAO.deleteWish(wishId);	
	}
}
