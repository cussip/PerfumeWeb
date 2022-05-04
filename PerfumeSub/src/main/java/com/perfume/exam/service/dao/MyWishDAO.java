package com.perfume.exam.service.dao;

import java.util.List;


import com.perfume.exam.vo.MyWishVO;

public interface MyWishDAO {
	List<MyWishVO> selectWishList() throws Exception;
}
