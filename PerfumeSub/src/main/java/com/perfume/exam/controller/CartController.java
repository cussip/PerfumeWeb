package com.perfume.exam.controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.perfume.exam.model.MemberVO;
import com.perfume.exam.service.CartService;
import com.perfume.exam.vo.CartVO;

@Controller
public class CartController {
	
	@Autowired
	private CartService cartService;
	
	@PostMapping("/cart/add")
	@ResponseBody
	public String addCartPOST(CartVO cart, HttpServletRequest request) {
		// 로그인 체크
		HttpSession session = request.getSession();
		MemberVO mvo = (MemberVO)session.getAttribute("member");
		if(mvo == null) {
			return "5";
		}
		return "";
			
	}
	 //장바구니 페이지이동
	@RequestMapping(value = "/cart", method = RequestMethod.GET)
	public void cartGET() {
		
		
	}
	@RequestMapping(value = "/cart/{id}",method = {RequestMethod.POST,RequestMethod.GET})
	public String cartPageGET(@PathVariable("id") String id, Model model) {
		
		List<CartVO> list = new ArrayList();
		
		
		list = cartService.getCart(id);
		int total = 0;
		int total_Price = 0;
		for (int i = 0; i < list.size(); i++) {
			total += list.get(i).getProduct_count();
			
		}
		
		for (int i = 0; i < list.size(); i++) {
			total_Price += list.get(i).getPrice();
			
		}
				
		model.addAttribute("cartInfo", list);
		model.addAttribute("total",total);
		model.addAttribute("total_Price",total_Price);
		System.out.println("장바구니 페이지 진입");		
		return "/cart"; 
	}
	
	@ResponseBody
	@RequestMapping(value = "/cart/delete", method=RequestMethod.POST)
	public String cartDelete(@RequestParam("cart_id")int cart_id) {
		
		cartService.deleteCart(cart_id);
	
		return "success"; 
	}
	
	@ResponseBody
	@RequestMapping(value = "/cart/modify", method=RequestMethod.POST)
	public String cartModify(@RequestParam Map<String,Object> map) {
		
		cartService.cartModify(map);
		
	
		return "success"; 
	}
	
	
	
}

