package com.test.mherp.product;

import lombok.Data;

@Data
public class ProductDTO {

	private String seq;
	private String name;
	private String shortdesc;
	private String content;
	private String price;
	private String regdate;
	private String img;
	private String sales;
	private String categoryseq;
	private String delflag;
	
	private String category; //상품 분류
	
	private String oseq; //주문번호
	private String odate; //주문일(최종 판매일 계산시에)
	
}
