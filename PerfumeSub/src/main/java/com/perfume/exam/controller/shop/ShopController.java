package com.perfume.exam.controller.shop;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.perfume.exam.service.PerfumeService;
import com.perfume.exam.vo.PerfumeVO;

@RequestMapping("/shop/")
@Controller
public class ShopController {

	@Autowired
	private PerfumeService perfumeservice;

	@RequestMapping("40ml")
	public String shop(Model model) throws Exception {

		List<PerfumeVO> list = perfumeservice.selectPerfumeList();

		model.addAttribute("list", list);

		return "root.shop.40ml";
	}

	@RequestMapping("curation")
	public String curation(Model model) throws Exception {

		List<PerfumeVO> list = perfumeservice.selectPerfumeList();

		model.addAttribute("list", list);

		return "root.shop.curation";
	}

	@RequestMapping("goods")
	public String goods(Model model) throws Exception {

		List<PerfumeVO> list = perfumeservice.selectGoodsList();

		model.addAttribute("list", list);

		return "root.shop.goods";
	}

}
