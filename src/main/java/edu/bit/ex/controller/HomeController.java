package edu.bit.ex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import edu.bit.ex.service.ProductMainService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class HomeController {
	// 상품보기
	@Autowired
	private ProductMainService productMainService;

	// 브랜드 스토리
	@GetMapping("/story")
	public String story() { // jvm이 가장 먼저 실행함
		return "brandstory";
	}

	// 상품보기
	@GetMapping("/product_main")
	public String product_main(Model model) {

		log.info("product_main()..");
		model.addAttribute("product_main", productMainService.getList());

		return "product_main";
	}

}