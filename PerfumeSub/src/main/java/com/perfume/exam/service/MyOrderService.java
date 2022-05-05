package com.perfume.exam.service;

import java.util.List;




import com.perfume.exam.vo.MyOrderVO;

public interface MyOrderService {
	List<MyOrderVO> selectOrderList() throws Exception;
	
	// public void deleteOrder(int orderId) throws Exception;
	 
	public int deleteOrder(int orderId);
	
}
