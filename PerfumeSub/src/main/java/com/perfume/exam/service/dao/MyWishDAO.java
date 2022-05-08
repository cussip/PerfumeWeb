package com.perfume.exam.service.dao;

import java.util.List;


import com.perfume.exam.vo.MyWishVO;

public interface MyWishDAO {
	List<MyWishVO> selectWishList() throws Exception;
	
	// 관심목록 삭제
	public void deleteWish(int wishId) throws Exception;
	
	
}
