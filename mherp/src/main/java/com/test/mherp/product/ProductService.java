package com.test.mherp.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductService implements IProductService{

	
	@Autowired
	private ProductDAO dao;

	@Override
	public List<ProductDTO> list() {
		
		return dao.list();
	}

	@Override
	public int add(ProductDTO dto) {
		
		return dao.add(dto);
	}

	@Override
	public ProductDTO get(String seq) {
		
		return dao.get(seq);
	}

//	@Override
//	public int search() {
//		
//		return dao.search();
//	}

	

	
	
	
}
