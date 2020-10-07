package com.test.mherp.inventory;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class InventoryDAO {

	@Autowired
	private SqlSessionTemplate template;
	
	public int enrollInventory(InventoryDTO dto) {
		
		
		return template.insert("inventory.enrollInventory", dto);
	}

	public HashMap<String, String> getPinfo(String productseq) {
		return template.selectOne("inventory.getPinfo", productseq);
	}

	public int getTotalProductCnt() {
		return template.selectOne("inventory.getTotalProductCnt");
	}

	public List<InventoryDTO> getRecentList() {
		
		List<InventoryDTO> list = template.selectList("inventory.getRecentList");
		
		for(InventoryDTO dto : list) {
			dto.setRegdate(dto.getRegdate().substring(0,10));
		}
		
		return list;
	}

	public List<InventoryDTO> getInventoryInfo(String page) {
		
		
		
		List<InventoryDTO> list = template.selectList("inventory.getInventoryInfo");
		
		for(InventoryDTO dto : list) {
			dto.setRegdate(dto.getRegdate().substring(0,10));
		}
		
		return list;
	}


}
