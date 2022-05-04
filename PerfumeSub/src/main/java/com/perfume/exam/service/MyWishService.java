package com.perfume.exam.service;

import java.util.List;


import com.perfume.exam.vo.MyWishVO;

public interface MyWishService {
	List<MyWishVO> selectWishList() throws Exception;
}
