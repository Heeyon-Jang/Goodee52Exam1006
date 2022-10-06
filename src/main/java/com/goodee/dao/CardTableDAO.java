package com.goodee.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.goodee.vo.CardTableVO;

@Mapper
public interface CardTableDAO {
	
	public List<CardTableVO> getContent();
	
}
