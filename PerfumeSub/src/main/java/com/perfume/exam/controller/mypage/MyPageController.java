package com.perfume.exam.controller.mypage;

import java.util.ArrayList;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.perfume.exam.service.MyOrderService;
import com.perfume.exam.service.MyWishService;
import com.perfume.exam.vo.MyOrderVO;
import com.perfume.exam.vo.MyWishVO;

@RequestMapping("/mypage/")
@Controller
public class MyPageController {

	@RequestMapping("myreview")
	public String myreview(Model model,HttpServletRequest req,HttpServletResponse res) throws Exception {
		
		return "root.mypage.myreview";
	}
	
	
	@Autowired
	private MyOrderService myOrderService;
	@Autowired
	private MyWishService myWishService;
	
	// 주문목록
	@RequestMapping("orderlist")
	public String orderlist(Model model,HttpServletRequest request,HttpServletResponse response) throws Exception {
		
		
		List<MyOrderVO> order = myOrderService.selectOrderList();
		
		model.addAttribute("order", order);
		return "root.mypage.orderlist";
		
	}
	
	/*
	@RequestMapping("deleteorder")
	public String deleteOrder(@RequestParam("order_id") int order_id, Model model, HttpServletRequest req, HttpServletResponse res)
	throws Exception {
		
		List<MyOrderVO> order = new ArrayList<>();

		myOrderService.deleteOrder(order_id);
		
		model.addAttribute("order", order);
		return "redirect:root.mypage.orderlist";
	}
	*/
	
	/*
	@RequestMapping(value="orderlist/delete", method=RequestMethod.GET)
	public String getDeleteOrder(@RequestParam("order_id") int order_id) throws Exception {
		
		myOrderService.deleteOrderList(order_id);
		return "redirect:/mypage/orderlist";
	}
	*/	
	
	// 문의
	@RequestMapping("request")
	public String request(Model model,HttpServletRequest req,HttpServletResponse res) throws Exception {
		
		return "root.mypage.request";
	}
	
	// 관심상품
	@RequestMapping("wishlist")
	public String wishlist(Model model,HttpServletRequest req,HttpServletResponse res) throws Exception {
		
		List<MyWishVO> wish = myWishService.selectWishList();
		model.addAttribute("wish", wish);
		
		return "root.mypage.wishlist";
	}
	
	@RequestMapping("myedit")
	public String myedit(Model model,HttpServletRequest req,HttpServletResponse res) throws Exception {
		
		return "root.mypage.myedit";
	}
}
