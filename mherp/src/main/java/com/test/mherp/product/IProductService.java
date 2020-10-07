package com.test.mherp.product;

import java.util.List;

public interface IProductService {

	List<ProductDTO> list();

	int add(ProductDTO dto);

	ProductDTO get(String seq);

	//int search();


	

}
