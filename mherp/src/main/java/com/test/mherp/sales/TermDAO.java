package com.test.mherp.sales;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class TermDAO implements ISales {
	
	@Autowired
	private SqlSessionTemplate template;

	@Override
	public List<TermDTO> term() {
		
		return template.selectList("sales.list");
		
	}
	
}