package com.perfume.exam;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/shop/")
@Controller
public class ShopController {
	
	@RequestMapping("40ml")
    public String shop() {
		
		return "root.shop.40ml";
	}
	
	@RequestMapping("curation")
    public String curation() {
		
		return "root.shop.curation";
	}
	
	@RequestMapping("goods")
    public String goods() {
		
		return "root.shop.goods";
	}
		
	
	
}

