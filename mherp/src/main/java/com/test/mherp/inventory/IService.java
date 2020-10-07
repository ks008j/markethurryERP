package com.test.mherp.inventory;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface IService {

	int enrollInventory(InventoryDTO dto);

	Map<String, String> getPinfo(String productseq);

	int getTotalProductCnt();

	List<InventoryDTO> getRecentList();

	List<InventoryDTO> getInventoryInfo(String page);

	String getTotalInventoryCnt();


}
