package com.perfume.exam;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/perfume/")
@Controller
public class HomeController {
		
	@RequestMapping("home")
	public String home() {
		
		return "root.perfume.home";
	}
	
	@RequestMapping("about")
	public String about() {
		
		return "root.perfume.about";
	}
	
	
}

