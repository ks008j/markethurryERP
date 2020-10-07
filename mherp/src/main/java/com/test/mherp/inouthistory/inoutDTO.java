package com.test.mherp.inouthistory;

import lombok.Data;

@Data
public class inoutDTO {

	//상품번호, 상품명, 상품가격, 
	private String seq;
	private String name;
	private String price;
	private String regdate;
	private String status;
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "inoutDTO [seq=" + seq + ", name=" + name + ", price=" + price + ", regdate=" + regdate + ", status="
				+ status + "]";
	}
	
	
	
	
	
}
