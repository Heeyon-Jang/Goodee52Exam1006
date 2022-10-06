package com.goodee.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.goodee.service.CardTableService;
import com.goodee.vo.CardTableVO;

@Controller
public class CardTableController {
	
	private CardTableService service;

	public CardTableController(CardTableService service) {
		super();
		this.service = service;
	}
	
	@GetMapping("/preMove")
	public String preMove(Model model) {
		List<CardTableVO> list = service.getContent();
		model.addAttribute("list", list);
		return "index";
	}
	
}
