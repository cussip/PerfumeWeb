package com.perfume.exam.service.dao;

import java.util.List;
import java.util.Map;

import com.perfume.exam.vo.CartVO;

public interface CartDAO {
	
	public void newAddCart(CartVO cart);
	
	/* 카트 목록 */
	public List<CartVO> getCart(String id);
	
	public int deleteCart(int cart_id);

	public void cartModify(Map<String, Object> map);
}
