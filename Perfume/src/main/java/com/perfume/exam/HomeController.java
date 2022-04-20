package com.perfume.exam;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class HomeController {
	
	@RequestMapping("/perfume/home")
	public String home() {
		
		return "root.perfume.home";
	}
	
	@RequestMapping("/perfume/about")
	public String about() {
		
		return "root.perfume.about";
	}
	
	@RequestMapping("/shop/first")
    public String shop() {
		
		return "root.shop.first";
	}
		
	
	
}

