package com.goodee.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.goodee.service.CardTableService;
import com.goodee.vo.CardTableVO;

@Controller
public class CardTableController {
	
	private CardTableService service;

	public CardTableController(CardTableService service) {
		super();
		this.service = service;
	}
	
	
	@GetMapping("/content")
	public String content(Model model) {
		System.out.println("지나오나");
		List<CardTableVO> list = service.getContent();
		model.addAttribute("list", list);
		System.out.println("하이");
		return "index";
	}
	
	
	
}
