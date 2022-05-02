package com.perfume.exam.controller.shop;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.taglibs.standard.tag.common.fmt.ParseDateSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.perfume.exam.service.PerfumeService;
import com.perfume.exam.vo.PerfumeVO;

@RequestMapping("/shop/")
@Controller
public class ShopController {

	@Autowired
	private PerfumeService perfumeservice;

	@RequestMapping("40ml")
	public String shop(Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {

		List<PerfumeVO> list = new ArrayList<>();
		String param = request.getParameter("param");

		if (param != null) {

			if (param.equals("All")) {
				list = perfumeservice.selectPerfumeList();

			} else if (param.equals("citrus")) {
				list = perfumeservice.selectCategoryList(param);

			} else if (param.equals("floral")) {
				list = perfumeservice.selectCategoryList(param);

			} else if (param.equals("frutity")) {
				list = perfumeservice.selectCategoryList(param);

			} else if (param.equals("green")) {
				list = perfumeservice.selectCategoryList(param);

			} else if (param.equals("herbal")) {
				list = perfumeservice.selectCategoryList(param);

			} else if (param.equals("aqua")) {
				list = perfumeservice.selectCategoryList(param);

			} else if (param.equals("woody")) {
				list = perfumeservice.selectCategoryList(param);

			} else if (param.equals("balsam")) {
				list = perfumeservice.selectCategoryList(param);

			} else if (param.equals("gourmand")) {
				list = perfumeservice.selectCategoryList(param);

			} else if (param.equals("musk")) {
				list = perfumeservice.selectCategoryList(param);

			} else if (param.equals("powdery")) {
				list = perfumeservice.selectCategoryList(param);

			}

		} else {
			param = "All";
			list = perfumeservice.selectPerfumeList();

		}
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

	@RequestMapping("detail")
	public String detail(Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {

		String param = request.getParameter("param");

		List<PerfumeVO> list = perfumeservice.selectName(param);
		
		model.addAttribute("list", list);
		//가격 값만 따로 넘겨줘서  price 3개로나눔(PerfumeVO에 price2 price3 추가)
		model.addAttribute("price", list.get(0).getPrice());
		model.addAttribute("price2", list.get(0).getPrice2());
		model.addAttribute("price3", list.get(0).getPrice3());

		return "root.shop.detail";
	}



}