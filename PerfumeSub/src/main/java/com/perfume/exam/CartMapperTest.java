package com.perfume.exam;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.perfume.exam.mapper.CartMapper;
import com.perfume.exam.model.CartDTO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class CartMapperTest {

	@Autowired
	private CartMapper mapper;
	
	@Test
	public void addCart() throws Exception {
		int Cart_id = 4;
		String Id = "noh2";
		int Product_id = 2;
		int Product_count = 2;
		String Image = "https://t1.daumcdn.net/cfile/tistory/99A598445C0D416D0B";
		String name = "zzang";
		int price = 130000000;
		int totalprice=130333;
			
		CartDTO cart = new CartDTO();
		cart.setCart_id(Cart_id);
		cart.setId(Id);
		cart.setProduct_id(Product_id);
		cart.setProduct_count(Product_count);
		cart.setImage(Image);
		cart.setName(name);
		cart.setPrice(price);
		
		int result = 0;
		result = mapper.addCart(cart);
		
		System.out.println("결과 : " + result);
		
		/*//cart table
	private int cart_id;
	private String id;
	private int product_id;
	private int product_count;
	
	//product table
	private String image;
	private String name;	
	private int price;
	private int totalPrice;*/
		
		
		
	}	

	/*
	//카트 삭제 

	@Test
	public void deleteCartTest() {
		int cartId = 1;
		
		mapper.deleteCart(cartId);

	
	// 카트 수량 수정 

	@Test
	public void modifyCartTest() {
		int cartId = 3;
		int count = 5;
		
		CartDTO cart = new CartDTO();
		cart.setCartId(cartId);
		cart.setBookCount(count);
		
		mapper.modifyCount(cart);
		
	}

	
	// 카트 목록

	@Test
	public void getCartTest() {
		String memberId = "admin";
		
		
		List<CartDTO> list = mapper.getCart(memberId);
		for(CartDTO cart : list) {
			System.out.println(cart);
			cart.initSaleTotal();
			System.out.println("init cart : " + cart);
		}
		
		
	
	}
		
	//

	@Test
	public void checkCartTest() {
		
		String memberId = "admin";
		int bookId = 71;
		
		CartDTO cart = new CartDTO();
		cart.setMemberId(memberId);
		cart.setBookId(bookId);
		
		CartDTO resutlCart = mapper.checkCart(cart);
		System.out.println("결과 : " + resutlCart);
		
	} */
}
