package com.perfume.exam.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.perfume.exam.mapper.CartMapper;
import com.perfume.exam.model.CartDTO;

@Service
public class CartServiceImpl implements CartService {

	@Autowired
	private CartMapper cartMapper;

	@Override
	public int addCart(CartDTO cart) {
		// 장바구니 데이터 체크
		CartDTO checkCart = cartMapper.checkCart(cart);
		
		if(checkCart != null) {
			return 2;
		}
		
		// 장바구니 등록 & 에러 시 0반환
		try {
			return cartMapper.addCart(cart);
		} catch (Exception e) {
			return 0;
		}
	}

	@Override
	public List<CartDTO> getCartList(String id) {
		
		List<CartDTO> cart = cartMapper.getCart(id);
		
		for(CartDTO dto : cart) {
			dto.initSaleTotal();
		}
		
		return cart;
	}

	@Override
	public int modifyCount(CartDTO cart) {
		// TODO Auto-generated method stub
		return cartMapper.modifyCount(cart);
	}

	@Override
	public int deleteCart(int cart_id) {
		// TODO Auto-generated method stub
		return cartMapper.deleteCart(cart_id);
	}

	@Override
	public void newAddCart(CartDTO cart) {
		cartMapper.newAddCart(cart);
		
	}
}
