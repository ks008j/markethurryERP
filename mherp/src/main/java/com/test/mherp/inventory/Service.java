package com.test.mherp.inventory;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

@org.springframework.stereotype.Service
public class Service implements IService{
	
	@Autowired
	private InventoryDAO dao;
	
	@Override
	@Transactional
	public int enrollInventory(InventoryDTO dto) {
		return dao.enrollInventory(dto);
	}

	@Override
	public HashMap<String, String> getPinfo(String productseq) {
		
		return dao.getPinfo(productseq);
	}

	@Override
	public int getTotalProductCnt() {
		return dao.getTotalProductCnt();
	}

	@Override
	public List<InventoryDTO> getRecentList() {
		return dao.getRecentList();
	}

	@Override
	public List<InventoryDTO> getInventoryInfo(String page) {
		return dao.getInventoryInfo(page);
	}

	@Override
	public String getTotalInventoryCnt() {
		return null;
	}

}
