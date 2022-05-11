package com.perfume.exam.service;

import java.util.List;


import com.perfume.exam.vo.MyWishVO;

public interface MyWishService {
	List<MyWishVO> selectWishList(String id) throws Exception;
	
	public void deleteWish(int wishId) throws Exception;
	
}
