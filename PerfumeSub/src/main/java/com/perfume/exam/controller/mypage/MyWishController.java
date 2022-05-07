package com.perfume.exam.controller.mypage;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.perfume.exam.service.MyWishService;
import com.perfume.exam.vo.MyWishVO;

@Controller
public class MyWishController {
	@Autowired
	private MyWishService myWishService;
	
	@GetMapping("/mywish")
	public String myWishGET(Model model,HttpServletRequest request
		  	,HttpServletResponse response) throws Exception {
		
		List<MyWishVO> wish = myWishService.selectWishList();
		model.addAttribute("wish", wish);
		
		return "root.mypage.wishlist";
		
	}
	
}
