package com.test.mherp.inventory;

import lombok.Data;

@Data
public class InventoryDTO {

	private String seq;
	private String productseq;
	private String employeeseq;
	private String regdate;
	private String reason;
	private String qty;
}
