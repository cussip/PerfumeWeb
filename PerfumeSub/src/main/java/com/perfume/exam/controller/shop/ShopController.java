package com.perfume.exam.controller.shop;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
	   public String shop(Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
	      
		String param = request.getParameter("param");
	      
	      
	      if (param.equals("all")) {

	      } else if (param.equals("시트러스")) {
	         List<PerfumeVO> list = perfumeservice.selectCategoryList(param);

	      } else if (param.equals("프로럴")) {
	         List<PerfumeVO> list = perfumeservice.selectCategoryList(param);

	      } else if (param.equals("프루티")) {
	         List<PerfumeVO> list = perfumeservice.selectCategoryList(param);

	      } else if (param.equals("그린")) {
	         List<PerfumeVO> list = perfumeservice.selectCategoryList(param);

	      } else if (param.equals("허벌")) {
	         List<PerfumeVO> list = perfumeservice.selectCategoryList(param);

	      } else if (param.equals("아쿠아")) {
	         List<PerfumeVO> list = perfumeservice.selectCategoryList(param);

	      } else if (param.equals("우디")) {
	         List<PerfumeVO> list = perfumeservice.selectCategoryList(param);

	      } else if (param.equals("발삼")) {
	         List<PerfumeVO> list = perfumeservice.selectCategoryList(param);

	      } else if (param.equals("구르망")) {
	         List<PerfumeVO> list = perfumeservice.selectCategoryList(param);

	      } else if (param.equals("머스크")) {
	         List<PerfumeVO> list = perfumeservice.selectCategoryList(param);

	      } else if (param.equals("파우더리")) {
	         List<PerfumeVO> list = perfumeservice.selectCategoryList(param);

	      }
	      

	     
		model.addAttribute("list", list);

	      return "root.shop.goods";
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
