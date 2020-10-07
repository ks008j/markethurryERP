package com.test.mherp.product;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDAO {
	
	@Autowired
	private SqlSessionTemplate template;

	
	public List<ProductDTO> list() {
		
		return template.selectList("product.list");
	}


	public int add(ProductDTO dto) {
		
		return template.insert("product.add", dto);
	}


	public ProductDTO get(String seq) {
		
		return template.selectOne("product.get", seq);
	}


//	public int search() {
//		
//		return template.selectList("product.search");
//	}


	

	

}
