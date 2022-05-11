package com.perfume.exam.service.dao;

import java.util.List;


import com.perfume.exam.vo.MyOrderVO;

public interface MyOrderDAO {
	 List<MyOrderVO> selectOrderList() throws Exception;
	
	 // 주문내역 삭제
	 public void deleteOrder(int orderId) throws Exception;
}
