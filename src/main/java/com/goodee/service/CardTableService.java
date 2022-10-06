package com.goodee.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.goodee.dao.CardTableDAO;
import com.goodee.vo.CardTableVO;

@Service
public class CardTableService {

	private CardTableDAO dao;
	
	public CardTableService(CardTableDAO dao) {
		super();
		this.dao = dao;
	}

	public List<CardTableVO> getContent(){
		return dao.getContent(); 
	}
}
